<%-- 
    Document   : Contact
    Created on : 30 mai 2024, 17:35:43
    Author     : mody.barry
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title>Contacts</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
        <style>
            body {
                background-color: #f8f9fa;
                padding: 20px;
            }
            .container {
                background-color: #ffffff;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            }
            h1, h2 {
                color: #343a40;
            }
            .table-responsive {
                margin-top: 20px;
            }
            .table th {
                background-color: #343a40;
                color: #ffffff;
            }
            .table tbody tr:hover {
                background-color: #f1f1f1;
            }
            .btn-danger {
                background-color: #dc3545;
                border-color: #dc3545;
            }
            .btn-danger:hover {
                background-color: #c82333;
                border-color: #bd2130;
            }
            .form-label {
                color: #495057;
            }
            .bg-white {
                background-color: #ffffff !important;
            }
            .shadow-sm {
                box-shadow: 0 1px 2px rgba(0,0,0,0.05) !important;
            }
            .rounded {
                border-radius: 0.25rem !important;
            }
        </style>
    </head>
    <body class="bg-light p-4">
        <div class="container">
            <h1 class="text-center mb-5">Liste des contacts</h1>
            <div class="table-responsive">
                <table class="table table-bordered table-striped">
                    <thead class="table-dark">
                        <tr>
                            <th scope="col">Nom</th>
                            <th scope="col">Numéro de Téléphone</th>
                            <th scope="col">Email</th>
                            <th scope="col">Compétence</th>
                            <th scope="col">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="contact" items="${contacts}">
                            <tr>
                                <td>${contact.nom}</td>
                                <td>${contact.telephone}</td>
                                <td>${contact.email}</td>
                                <td>${contact.competence}</td>
                                <td>
                                    <button type="button" class="btn btn-danger" onclick="confirmDelete(${contact.id})">Supprimer</button>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <h2 class="text-center mt-5 mb-3">Ajouter un nouveau contact</h2>
            <form action="contacts" method="post" class="bg-white p-4 rounded shadow-sm">
                <div class="mb-3">
                    <label for="nom" class="form-label">Nom:</label>
                    <input type="text" id="nom" name="nom" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="telephone" class="form-label">Numéro de Téléphone:</label>
                    <input type="text" id="telephone" name="telephone" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email:</label>
                    <input type="email" id="email" name="email" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label for="competence" class="form-label">Compétence:</label>
                    <input type="text" id="competence" name="competence" class="form-control" required>
                </div>
                <button type="submit" class="btn btn-danger">Ajouter</button>
            </form>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <script>
            function confirmDelete(contactId) {
                if (confirm("Êtes-vous sûr de vouloir supprimer ce contact ?")) {
                    var xhr = new XMLHttpRequest();
                    xhr.open("DELETE", "contacts?contactId=" + contactId, true);
                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                    xhr.onreadystatechange = function () {
                        if (xhr.readyState === 4) {
                            if (xhr.status === 200) {
                                location.reload();
                            } else {
                                console.error("Erreur lors de la suppression du contact. Réponse du serveur:", xhr.responseText);
                            }
                        }
                    };
                    xhr.send();
                }
            }
        </script>
    </body>
</html>
