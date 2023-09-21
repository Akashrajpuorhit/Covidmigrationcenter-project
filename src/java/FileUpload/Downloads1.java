/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package FileUpload;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Database.SqlConnection;
import Algorithm.Decryption;

/**
 *
 * @author java4
 */
public class Downloads1 extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String fileid = request.getParameter("id");
//            String uname = request.getParameter("uname");

            String fname = null, fkey = null;
            String is = null;

            Connection con = SqlConnection.getConnection();
            Statement st = con.createStatement();
            Statement st1 = con.createStatement();



//            HttpSession session = request.getSession(true);
//            String uname = (String) session.getAttribute("ssname");

//            System.out.println("+++++++++++++++++" + uname);

            String skey = "";
            ResultSet rt = st.executeQuery("select * from upload1 where id='" + fileid + "'");

            if (rt.next()) {
                fname = rt.getString("filename");
                is = rt.getString("filedata");
                skey = rt.getString("skey");
               


            } else {
                out.println("error while retreiving data");

            }



            String content = new Decryption().decrypt(is, skey);
            response.setHeader("Content-Disposition", "attachment;filename=\"" + fname + "\"");
            out.write(content);
       

        } catch (Exception e) {
            out.println(e);
        } finally {
            out.close();
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
        processRequest(request, response);
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
        processRequest(request, response);
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
