<%-- 
    Author     : Ouardine
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<style>
    ul {
        list-style-type: none;
        padding: 0;
    }

    li {
        margin: 10px 0;
    }

    a {
        text-decoration: none;
        color: #f8e0e0;
        display: block;
        padding: 10px;
        border-radius: 5px;
        transition: background-color 0.2s;
    }

    a:hover {
        background-color: #eee;
    }

    .active {
        background-color: #f8e0e0;
        color: white;
    }
</style>
<div style="display: flex;">
    <div style="flex: 0 0 200px; background-color: #f5f5f5; padding: 20px;">
        <ul>
            <li><a class="active" href="#home">Home</a></li>
            <li><a href="etudiantForm.jsp">Gestion des étudiants</a></li>
            <li><a href="marqueForm.jsp">Gestion des marques</a></li>
            <li><a href="machineForm.jsp">Gestion des machines</a></li>
            <li><a href="machineByMarqueForm.jsp">Machines par marque</a></li>
            <li><a href="machineByReference.jsp">Machines par référence</a></li>
        </ul>
    </div>
