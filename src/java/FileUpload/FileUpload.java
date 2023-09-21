/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package FileUpload;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Database.Ftpcon;
import Database.SqlConnection;
import Algorithm.Encryption;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Java
 */
public class FileUpload extends HttpServlet {

    File file;
    final String filepath = "E:/";

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            MultipartRequest m = new MultipartRequest(request, filepath);
            String fname = m.getParameter("fname");

            File file = m.getFile("file");
            String filename = file.getName().toLowerCase();

            Connection con = SqlConnection.getConnection();


            BufferedReader br = new BufferedReader(new FileReader(filepath + filename));
            StringBuffer sb = new StringBuffer();
            String temp = null;
            System.out.println();
            while ((temp = br.readLine()) != null) {
               temp=temp+"\n";
                sb.append(temp);
            }


            KeyGenerator keyGen = KeyGenerator.getInstance("AES");
            keyGen.init(128);
            SecretKey secretKey = keyGen.generateKey();
            System.out.println("secret key:" + secretKey);
            
            System.out.println("File" + sb);

            Encryption e = new Encryption();
            String ABE = e.encrypt(sb.toString(), secretKey);
            //storing encrypted file
            FileWriter fw = new FileWriter(file);
            fw.write(ABE);
            fw.close();

            byte[] b = secretKey.getEncoded();//encoding secretkey
            String skey = Base64.encode(b);
            System.out.println("Secret Key : " + skey);



            DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
            Date date = new Date();
            String time = dateFormat.format(date);
            Calendar cal = Calendar.getInstance();
            System.out.println(dateFormat.format(cal.getTime()));

            HttpSession session = request.getSession(true);
            session.setAttribute("encStr", ABE);
            session.setAttribute("stime", time);
            System.out.println("BTime : " + time);
            
            String confirmstatus = "no";
            String confirmlabstatus = "no";
            String email = (String)session.getAttribute("s");
            //uploading file
            boolean status = new Ftpcon().upload(file);
            if (status) {
                String sq2 = "insert into upload(fname, filedata, filename, utime, skey, status, labstatus, email) values (?, ?, ?, ?, ?, ?, ?, ?) ";
                System.out.println("Value Insert Success : " + sq2);
                PreparedStatement pstm1 = con.prepareStatement(sq2);
                pstm1.setString(1, fname);
                pstm1.setString(2, ABE);
                pstm1.setString(3, file.getName());
                pstm1.setString(4, time);
                pstm1.setString(5, skey);
                pstm1.setString(6, confirmstatus);
                pstm1.setString(7, confirmlabstatus);
                pstm1.setString(8, email);

                int sd = pstm1.executeUpdate();
                if (sd > 0) {
                    response.sendRedirect("fileupload.jsp?msg=Successfully");

                } else {
                    response.sendRedirect("fileupload.jsp?msg=Failed");
                }
            }
            response.sendRedirect("fileupload.jsp?File Not Upload to Cloud");
            System.out.println("File Not Upload to Cloud");

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(FileUpload.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(FileUpload.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
