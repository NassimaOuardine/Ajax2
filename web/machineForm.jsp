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
    <script src="script/script.js" type="text/javascript"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
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
            border: 2px solid #f8e0e0; /* Changed to the new color */
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
            background-color: #f8e0e0; /* Changed to the new color */
            color: white;
        }

        .bndelete, .bnupdate {
            background-color: #f8e0e0; /* Changed to the new color */
            color: white;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
        }

        .bndelete:hover, .bnupdate:hover {
            background-color: #555;
        }

        /* Add additional styles for specific elements if needed */
    </style>
</head>
<body>
    <%@include file="template/header.jsp" %>
    <%@include file="template/menu.jsp" %>
    <div class="content">
        <form method="GET" action="MachineController">
            <fieldset>
                <legend>Informations Machine</legend>
                <table border="0">
                    <tr>
                        <td>Reference</td>
                        <td><input id="ref" type="text" name="ref" value=""  required=""/></td>
                    </tr>
                    <tr>
                        <td>Prix</td>
                        <td><input id="prix" type="text" name="prix" value="" required="" /></td>
                    </tr>
                    <tr>
                        <td>Marque</td>
                        <td>
                            <select id="marque" name="marque">
                                <%
                                    MarqueService ms = new MarqueService();
                                    for(Marque m : ms.findAll()){
                                %>
                                <option value="<%=m.getId()%>"><%=m.getLibelle()%></option>
                                <%
                                    }
                                %>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Date Achat</td>
                        <td><input id="date" type="date" name="dateAchat" value="" required="" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input name="op" type="submit" value="Envoyer" />
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
                        <th>Reference <br>
                            <input id="Ref" type="text" name="ref" value="" /></th>
                        <th>Prix</th>
                        <th>Marque</th>
                        <th>Date d'achat</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Machine mm : mms.findAll()) {
                    %>
                    <tr>
                        <td><%=mm.getId()%></td>
                        <td><%=mm.getReference()%></td>
                        <td><%=mm.getPrix()%></td>
                        <td><%=mm.getMarque().getLibelle()%></td>
                        <td><%=mm.getDateAchat()%></td>
                        <td>
                            <button class="bndelete" onclick="showConfirmation(<%=mm.getId()%>)">Supprimer</button>
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
