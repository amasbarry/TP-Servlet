/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kalanso;

/**
 *
 * @author mody.barry
 */
public class Contact {
     private int id;
    private String nom;
    private String telephone;
    private String Email;
    private String Competence;

    public Contact() {
    }

    public Contact(int id) {
        this.id = id;
    }

    public Contact(int id, String nom, String telephone, String Email, String Competence) {
        this.id = id;
        this.nom = nom;
        this.telephone = telephone;
        this.Email = Email;
        this.Competence = Competence;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getCompetence() {
        return Competence;
    }

    public void setCompetence(String Competence) {
        this.Competence = Competence;
    }

    @Override
    public String toString() {
        return "Contact{" + "id=" + id + ", nom=" + nom + ", telephone=" + telephone + ", Email=" + Email + ", Competence=" + Competence + '}';
    }
    
}
