<%@page import="ma.school.beans.Marque"%>
<%@page import="ma.school.service.MarqueService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="style/css.css" rel="stylesheet" type="text/css"/>
    <link href="style/csslocal.css" rel="stylesheet" type="text/css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.0/chart.min.js"></script>
</head>
<body>
    <%@include file="template/header.jsp" %>
    <%@include file="template/menu.jsp" %>
    <div class="content">
        <canvas id="machineByMarqueChart" width="400" height="200"></canvas>
    </div>
</body>
<script>
    // Fetch data from the servlet
    fetch("GraphMachineByMarqueController")
    .then(response => response.json())
    .then(data => {
        const labels = data.map(item => item.marque);
        const counts = data.map(item => item.count);

        // Create a bar chart
        const ctx = document.getElementById('machineByMarqueChart').getContext('2d');
        new Chart(ctx, {
            type: 'bar',
            data: {
                labels: labels,
                datasets: [{
                    label: 'Machines by Marque',
                    data: counts,
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    borderColor: 'rgba(75, 192, 192, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    })
    .catch(error => console.error("Error fetching data:", error));
</script>
</html>