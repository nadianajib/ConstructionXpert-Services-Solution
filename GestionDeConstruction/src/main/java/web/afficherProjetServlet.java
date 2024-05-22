package web;

import dao.IProjetDAO;
import dao.ProjetDAOImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import metier.Projet;

import java.io.IOException;
import java.util.List;

@WebServlet
public class ProjetServlet  extends HttpServlet {
    private IProjetDAO metier;

    @Override
    public void init() throws ServletException {
        metier = new ProjetDAOImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        if(path.equals("/home")){
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }
        if(path.equals("/afficher")){
            ProjetModel model = new ProjetModel();
            List<Projet>projets=metier.afficherListeProjets();
            model.setProjet(projets);
            request.setAttribute("model",model);
            request.getRequestDispatcher("afficherProjet.jsp").forward(request,response);

        }

    }
}
