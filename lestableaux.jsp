<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Les tableaux</title>
</head>
<body bgcolor="white">
    <h1>Exercices sur les tableaux</h1>
    
    <form action="#" method="post">
        <label for="tableau">Saisir au minimum 3 chiffres séparés par un espace (ex: 6 78 15) : </label>
        <input type="text" id="tableau" name="tableau">
        <input type="submit" value="Analyser">
    </form>
    
    <% String tableauStr = request.getParameter("tableau");
       if (tableauStr != null && !tableauStr.isEmpty()) {
           String[] tableauDeChiffres = tableauStr.split("\\s+");
           int[] chiffres = new int[tableauDeChiffres.length];
           for (int i = 0; i < tableauDeChiffres.length; i++) {
               chiffres[i] = Integer.parseInt(tableauDeChiffres[i]);
           }
    %>
    
        <p>Le tableau contient <%= chiffres.length %> valeurs.</p>
        <h2>Exercice 1 : Le carré de la première valeur</h2>
        <p>Le carré de la première valeur est : <%= chiffres[0] * chiffres[0] %></p>
    
        <h2>Exercice 2 : La somme des 2 premières valeurs</h2>
        <p>La somme des deux premières valeurs est : <%= chiffres[0] + chiffres[1] %></p>
    
        <h2>Exercice 3 : La somme de toutes les valeurs</h2>
        <% int somme = 0;
           for (int chiffre : chiffres) {
               somme += chiffre;
           }
        %>
        <p>La somme de toutes les valeurs est : <%= somme %></p>
    
        <h2>Exercice 4 : La valeur maximale</h2>
        <% int max = chiffres[0];
           for (int chiffre : chiffres) {
               if (chiffre > max) max = chiffre;
           }
        %>
        <p>La valeur maximale est : <%= max %></p>
    
        <h2>Exercice 5 : La valeur minimale</h2>
        <% int min = chiffres[0];
           for (int chiffre : chiffres) {
               if (chiffre < min) min = chiffre;
           }
        %>
        <p>La valeur minimale est : <%= min %></p>
    
        <h2>Exercice 6 : La valeur la plus proche de 0</h2>
        <% int procheZero = chiffres[0];
           for (int chiffre : chiffres) {
               if (Math.abs(chiffre) < Math.abs(procheZero)) {
                   procheZero = chiffre;
               }
           }
        %>
        <p>La valeur la plus proche de 0 est : <%= procheZero %></p>
    
        <h2>Exercice 7 : La valeur la plus proche de 0 (version améliorée)</h2>
        <% int procheZero2 = chiffres[0];
           for (int chiffre : chiffres) {
               if (Math.abs(chiffre) < Math.abs(procheZero2) ||
                   (Math.abs(chiffre) == Math.abs(procheZero2) && chiffre > procheZero2)) {
                   procheZero2 = chiffre;
               }
           }
        %>
        <p>La valeur la plus proche de 0 (positif en cas d'égalité) est : <%= procheZero2 %></p>
    
    <% } %>
    
    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
