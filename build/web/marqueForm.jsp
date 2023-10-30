<%@page import="ma.school.beans.Marque"%>
<%@page import="ma.school.service.MarqueService"%>
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
    <style>
        /* Add CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f3f3;
        }

        .content {
            margin: 20px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
            border-radius: 10px;
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
            color: black;
        }
        .bnupdate {
            background-color: #2efe16;
            color: white;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
            text-decoration: none;
        }

        .bndelete {
            background-color: #f40a0a;
            color: white;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
            text-decoration: none;
        }

        .bndelete:hover, .bnupdate:hover {
            background-color: #e30707;
        }
    </style>
</head>
<body>
    <%@include file="template/header.jsp" %>
    <%@include file="template/menu.jsp" %>
    <div class="content">
        <form method="GET" action="MarqueController">
            <fieldset>
                <legend>Informations Marque</legend>
                <table >
                    <tr>
                        <td>Code</td>
                        <td><input id="code" type="text" name="code" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td>Libelle</td>
                        <td><input id="libelle" type="text" name="libelle" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input name="op" type="submit" value="Envoyer" class="bnupdate" />
                        </td>
                    </tr>
                </table>
            </fieldset>
        </form>
        <%
            MarqueService ms = new MarqueService();
        %>
        <fieldset>
            <legend>Liste des marques</legend>

            <table  class="tab">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Code</th>
                        <th>Libelle</th>
                        <th>Supprimer</th>
                        <th>Modifier</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Marque m : ms.findAll()) {
                    %>
                    <tr>
                        <td><%=m.getId()%></td>
                        <td><%=m.getCode()%></td>
                        <td><%=m.getLibelle()%></td>
                        <td><a class="bndelete" href="#" onclick="showConfirmationM(<%=m.getId()%>)">Supprimer</a></td>
                        <td><a class="bnupdate" href="#">Modifier</a></td>
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
