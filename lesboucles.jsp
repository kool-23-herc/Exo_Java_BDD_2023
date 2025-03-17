<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<% 
            String value_str = request.getParameter("value");

            if (value_str != null && !value_str.isEmpty()) {
                int value = Integer.parseInt(value_str);

                out.print("<section>");
                out.println("<h3>Exercice 1 : Le carré d'étoiles :</h3>");
                for (int i = 1; i <= value; i++) {
                    for (int j = 1; j <= value; j++) {
                        out.print("*");
                    }
                    out.println("<br />");
                }
                out.print("</section>");

                out.print("<section>");
                out.println("<h3>Exercice 2 : Triangle rectangle gauche :</h3>");
                for (int i = 1; i <= value; i++) {
                    for (int j = 1; j <= i; j++) {
                        out.print("*");
                    }
                    out.println("<br />");
                }
                out.print("</section>");

                out.print("<section>");
                out.println("<h3>Exercice 3 : Triangle rectangle inversé :</h3>");
                for (int i = value; i > 0; i--) {
                    for (int j = 1; j <= i; j++) {
                        out.print("*");
                    }
                    out.println("<br />");
                }
                out.print("</section>");

                out.print("<section>");
                out.println("<h3>Exercice 4 : Triangle rectangle 2 :</h3>");
                for (int i = value; i > 0; i--) {
                    for (int j = 1; j < i; j++) {
                        out.print("&nbsp;&nbsp;");
                    }

                    for (int k = 0; k <= value - i; k++) {
                        out.print("*");
                    }

                    out.println("<br />");
                }
                out.print("</section>");

                out.print("<section>");
                out.println("<h3>Exercice 5 : Triangle isocèle :</h3>");
                for (int i = value; i > 0; i--) {
                    for (int j = 1; j < i; j++) {
                        out.print("&nbsp;");
                    }

                    for (int k = 0; k <= value - i; k++) {
                        out.print("*");
                    }

                    out.println("<br />");
                }
                out.print("</section>");

                out.print("<section>");
                out.println("<h3>Exercice 6 : Le demi-losange :</h3>");
                // Partie supérieure du losange
                for (int i = value; i > 0; i--) {
                    for (int j = 1; j < i; j++) {
                        out.print(" ");
                    }
            
                    for (int k = 0; k <= value - i; k++) {
                        out.print("*");
                    }
            
                    out.println("<br />");
                }
                
                // Partie inférieure du losange
                for (int i = 0; i <= value; i++) {
                    for (int j = 0; j < i; j++) {
                        out.print(" ");
                    }
                    
                    for (int k = 0; k < value - i; k++) {
                        out.print("*");
                    }
                    
                    out.println("<br />");
                }
                out.print("</section>");

                out.print("<section>");
                out.println("<h3>Exercice 7 : La table de multiplication</h3>");
                for (int i = 1; i <= 10; i++) {
                    out.print(String.format("%d x %d = %d<br />", i, value, i * value));
                }
                out.print("</section>");
            }
        %>
