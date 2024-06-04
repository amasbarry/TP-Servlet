<%-- 
    Document   : index
    Created on : 30 mai 2024, 17:53:54
    Author     : mody.barry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenue à votre Application de Gestion de Contacts</title>
        <style>
            body {
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
                background-image: radial-gradient(circle at 29% 55%, hsla(329,0%,99%,0.05) 0%, hsla(329,0%,99%,0.05) 4%,transparent 4%, transparent 44%,transparent 44%, transparent 100%),radial-gradient(circle at 85% 89%, hsla(329,0%,99%,0.05) 0%, hsla(329,0%,99%,0.05) 51%,transparent 51%, transparent 52%,transparent 52%, transparent 100%),radial-gradient(circle at 6% 90%, hsla(329,0%,99%,0.05) 0%, hsla(329,0%,99%,0.05) 53%,transparent 53%, transparent 64%,transparent 64%, transparent 100%),radial-gradient(circle at 35% 75%, hsla(329,0%,99%,0.05) 0%, hsla(329,0%,99%,0.05) 6%,transparent 6%, transparent 98%,transparent 98%, transparent 100%),radial-gradient(circle at 56% 75%, hsla(329,0%,99%,0.05) 0%, hsla(329,0%,99%,0.05) 16%,transparent 16%, transparent 23%,transparent 23%, transparent 100%),radial-gradient(circle at 42% 0%, hsla(329,0%,99%,0.05) 0%, hsla(329,0%,99%,0.05) 3%,transparent 3%, transparent 26%,transparent 26%, transparent 100%),radial-gradient(circle at 29% 28%, hsla(329,0%,99%,0.05) 0%, hsla(329,0%,99%,0.05) 51%,transparent 51%, transparent 75%,transparent 75%, transparent 100%),radial-gradient(circle at 77% 21%, hsla(329,0%,99%,0.05) 0%, hsla(329,0%,99%,0.05) 35%,transparent 35%, transparent 55%,transparent 55%, transparent 100%),radial-gradient(circle at 65% 91%, hsla(329,0%,99%,0.05) 0%, hsla(329,0%,99%,0.05) 46%,transparent 46%, transparent 76%,transparent 76%, transparent 100%),linear-gradient(45deg, rgb(83, 91, 235),rgb(76, 11, 174));
         
                background-size: cover;
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                color: #ffffff;
                text-align: center;
                overflow: hidden;
            }

            .welcome-container {
                background: rgba(0, 0, 0, 0.5);
                padding: 20px 40px;
                border-radius: 10px;
                animation: fadeIn 2s ease-in-out;
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .logo {
                max-width: 150px;
                margin-bottom: 10px;
                animation: fadeIn 2s ease-in-out;
            }

            h1 {
                font-size: 2.5em;
                margin: 10px 0;
                animation: slideInFromLeft 1.5s ease-in-out;
            }

            p {
                font-size: 1.2em;
                margin: 10px 0;
                animation: slideInFromRight 1.5s ease-in-out;
            }

            .action-button {
                display: inline-block;
                padding: 10px 20px;
                font-size: 1em;
                color: #ffffff;
                background-color: #007bff;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                text-decoration: none;
                margin-top: 20px;
                animation: fadeIn 2.5s ease-in-out;
            }

            .action-button:hover {
                background-color: #0056b3;
            }

            @keyframes fadeIn {
                from { opacity: 0; }
                to { opacity: 1; }
            }

            @keyframes slideInFromLeft {
                from { transform: translateX(-100%); opacity: 0; }
                to { transform: translateX(0); opacity: 1; }
            }

            @keyframes slideInFromRight {
                from { transform: translateX(100%); opacity: 0; }
                to { transform: translateX(0); opacity: 1; }
            }
        </style>
    </head>
    <body>
        <div class="welcome-container">
            <img src="logo.png" alt="Logo" class="logo">
            <h1>Bienvenue à votre Application de Gestion de Contacts</h1>
            <p>Organisez vos contacts efficacement et facilement</p>
            <a href="Contact.jsp" class="action-button">Commencer</a>
        </div>
    </body>
</html>
