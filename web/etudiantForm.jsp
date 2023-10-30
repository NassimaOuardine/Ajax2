<%@page import="java.util.Date"%>
<%@page import="ma.school.beans.Etudiant"%>
<%@page import="ma.school.service.EtudiantService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script src="script/script.js" type="text/javascript"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <script src="script/jsonExemple.js" type="text/javascript"></script>
    <style>
        /* Add inline CSS styles here */
        body {
            font-family: Arial, sans-serif;
        }

        .content {
            margin: 20px;
            padding: 20px;
        }

        fieldset {
            border: 2px solid #f8e0e0;
            padding: 10px;
            border-radius: 10px;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
        }

        table th, table td {
            padding: 10px;
        }

        .tab {
            border-collapse: collapse;
        }

        .tab th {
            background-color: #f8e0e0;
            color: black ;
        }
        .bnupdate {
            background-color: #f6350a;
            color: white;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
        }

        .bndelete{
            background-color: #9ef1b7;
            color: white;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
        }

        .bndelete:hover, .bnupdate:hover {
            background-color: #f8e0e0;
        }
    </style>
</head>
<body>
    <%@include file="template/header.jsp" %>
    <%@include file="template/menu.jsp" %>
    <div class="content">
        <form method="GET" action="EtudiantController">
            <fieldset>
                <legend>Informations Etudiant</legend>
                <table border="0">
                    <tr>
                        <td>Nom</td>
                        <td><input id="nom" type="text" name="nom" value=""  required=""/></td>
                    </tr>
                    <tr>
                        <td>Prenom</td>
                        <td><input id="prenom" type="text" name="prenom" value="" required="" /></td>
                    </tr>
                    <tr>
                            <td>Ville</td>
                            <td>
                                <select id="ville" name="ville">
                                    <option value="Rabat">Rabat</option>
                                    <option value="Fes">Fes</option>
                                    <option value="Marakech">Marrakech</option>

                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Date de naissance</td>
                            <td><input id="date" type="date" name="dateNaissance" value="" required="" /></td>
                        </tr>
                        <tr>
                            <td>Sexe</td>
                            <td>M<input id="m" type="radio" name="sexe" value="homme" />
                                F<input id="f" type="radio" name="sexe" value="femme" checked="checked" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input name="op" type="submit" value="Envoyer" class="bnupdate" />
                            </td>
                        </tr>
                    <!-- Rest of your form -->
                </table>
            </fieldset>
        </form>
        <%
            EtudiantService es = new EtudiantService();
        %>
        <fieldset>
            <legend>Liste des étudiants</legend>
            <table border="1" class="tab">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nom <br>
                            </th>
                        <th>Prenom</th>
                        <th>Ville</th>
                        <th>Date de naissance</th>
                        <th>Sexe</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Etudiant e : es.findAll()) {
                    %>
                    <tr>
                        <td><%=e.getId()%></td>
                        <td><%=e.getNom()%></td>
                        <td><%=e.getPrenom()%></td>
                        <td><%=e.getVille()%></td>
                        <td><%=e.getDateNaissance()%></td>
                        <td><%=e.getSexe()%></td>
                        <td>
                            <button class="bndelete" onclick="showConfirmationE(<%=e.getId()%>)">Supprimer</button>
                            <button class="bnupdate">Modifier</button>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        </fieldset>
    </div>
</body>
</html>
