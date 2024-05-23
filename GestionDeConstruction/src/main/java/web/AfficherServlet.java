package web;

import dao.ProjetDAOImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "AfficherServlet", value = "/AfficherServlet")
public class AfficherServlet extends HttpServlet {

        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            ProjetDAOImpl show=new ProjetDAOImpl();
            try {
                request.setAttribute("afficherList",show.afficherListeProjets());
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
//            Date datedebut = null;
//            Date datefin = null;
//            try {
//                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); // Adjust the date format according to your input format
//                datedebut =  sdf.parse(request.getParameter("datedebut"));
//                datefin =  sdf.parse(request.getParameter("datefin"));
//            } catch (ParseException e) {
//                e.printStackTrace();
//                // Handle the exception, e.g., setting default dates or returning an error response
//            }
            this.getServletContext().getRequestDispatcher("/afficherProjet.jsp").forward(request, response);
        }

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            // TODO Auto-generated method stub
        }
}
