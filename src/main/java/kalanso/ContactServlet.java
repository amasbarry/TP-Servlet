/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kalanso;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/contacts")
public class ContactServlet extends HttpServlet {

    private final List<Contact> contacts = new ArrayList<>();

    @Override
    public void init() throws ServletException {
        super.init();
        // Ajouter un contact par défaut pour tester
        contacts.add(new Contact(1, "Mody", "77773034", "modybarry50@gmail.com", "Développeur"));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("contacts", contacts);
        req.getRequestDispatcher("/Contact.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nom = req.getParameter("nom");
        String telephone = req.getParameter("telephone");
        String email = req.getParameter("email");
        String competence = req.getParameter("competence");
        
        int newId = contacts.size() + 1; // Simple manière de générer un nouvel ID
        contacts.add(new Contact(newId, nom, telephone, email, competence));
        resp.sendRedirect("contacts");
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String contactId = req.getParameter("contactId");
        if (contactId != null && !contactId.isEmpty()) {
            int id = Integer.parseInt(contactId);
            Contact contactToRemove = null;
            for (Contact contact : contacts) {
                if (contact.getId() == id) {
                    contactToRemove = contact;
                    break;
                }
            }
            if (contactToRemove != null) {
                contacts.remove(contactToRemove);
                resp.setStatus(HttpServletResponse.SC_OK);
            } else {
                resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
            }
        } else {
            resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
        }
    }
}
