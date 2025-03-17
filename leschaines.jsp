<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Les chaînes de caractères</title>
</head>
<body bgcolor="white">
    <h1>Exercices sur les chaînes de caractères</h1>
    
    <form action="#" method="post">
        <label for="chaine">Saisir une chaîne (minimum 6 caractères) : </label>
        <input type="text" id="chaine" name="chaine">
        <input type="submit" value="Analyser">
    </form>
    
    <% String chaine = request.getParameter("chaine");
       if (chaine != null && !chaine.isEmpty() && chaine.length() >= 6) { %>
        
        <p>Longueur de la chaîne : <%= chaine.length() %> caractères</p>
        <p>3ème caractère : <%= chaine.charAt(2) %></p>
        <p>Une sous-chaîne : <%= chaine.substring(2, 6) %></p>
        <p>Première occurrence de 'e' : <%= chaine.indexOf('e') %></p>
        
        <h2>Exercice 1 : Combien de 'e' dans la chaîne ?</h2>
        <% int compteurE = 0;
           for (int i = 0; i < chaine.length(); i++) {
               if (chaine.charAt(i) == 'e') {
                   compteurE++;
               }
           }
        %>
        <p>Nombre de 'e' : <%= compteurE %></p>
        
        <h2>Exercice 2 : Affichage vertical</h2>
        <% for (int i = 0; i < chaine.length(); i++) { %>
            <p><%= chaine.charAt(i) %></p>
        <% } %>
        
        <h2>Exercice 3 : Retour à la ligne aux espaces</h2>
        <p><%= chaine.replace(" ", "<br>") %></p>
        
        <h2>Exercice 4 : Afficher une lettre sur deux</h2>
        <p>
        <% for (int i = 0; i < chaine.length(); i += 2) { %>
            <%= chaine.charAt(i) %>
        <% } %>
        </p>
        
        <h2>Exercice 5 : La phrase en verlant</h2>
        <p>
        <% for (int i = chaine.length() - 1; i >= 0; i--) { %>
            <%= chaine.charAt(i) %>
        <% } %>
        </p>
        
        <h2>Exercice 6 : Consonnes et voyelles</h2>
        <% int voyelles = 0, consonnes = 0;
           String voyellesStr = "aeiouyAEIOUY";
           for (int i = 0; i < chaine.length(); i++) {
               char c = chaine.charAt(i);
               if (Character.isLetter(c)) {
                   if (voyellesStr.indexOf(c) != -1) {
                       voyelles++;
                   } else {
                       consonnes++;
                   }
               }
           }
        %>
        <p>Nombre de voyelles : <%= voyelles %></p>
        <p>Nombre de consonnes : <%= consonnes %></p>
    
    <% } %>
    
    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
