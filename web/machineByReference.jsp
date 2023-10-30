<%@page import="ma.school.beans.Machine"%>
<%@page import="ma.school.service.MachineService"%>
<%@page import="ma.school.beans.Marque"%>
<%@page import="ma.school.service.MarqueService"%>
<%@page import="java.util.Date"%>
<%@page import="ma.school.beans.Etudiant"%>
<%@page import="ma.school.service.EtudiantService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
            color: white;
        }

        select {
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
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
            background-color: #e56e6e;
        }
    </style>
</head>
<body>
    <%@include file="template/header.jsp" %>
    <%@include file="template/menu.jsp" %>
    <div class="content">
        <form method="GET" action="MachineController">
            <fieldset>
                <legend>Sélectionner la Référence</legend>
                <table border="0">
                    <tr>
                        <td>Machine</td>
                        <td>
                            <select id="reference" name="reference">
                                <option value="0">Choisir La Référence</option>
                                <%
                                    MachineService ms = new MachineService();
                                    for (Machine m : ms.findAll()) {
                                %>
                                <option value="<%=m.getReference()%>"><%=m.getReference()%></option>
                                <%}%>
                            </select>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </form>
        <%
            MachineService mms = new MachineService();
        %>
        <fieldset>
            <legend>Liste des Machines</legend>
            <table border="1" class="tab">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Référence <br>
                            <input id="f" type="text" name="f" value="" />
                        </th>
                        <th>Prix</th>
                        <th>Marque</th>
                        <th>Date d'achat</th>
                        <th>Supprimer</th>
                        <th>Modifier</th>
                    </tr>
                </thead>
                <tbody id='body'>
                </tbody>
            </table>
        </fieldset>
    </div>
</body>
</html>
