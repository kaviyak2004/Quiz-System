<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page session="true" %>
<%
    String username = (String) session.getAttribute("username");
    if (username == null || username.trim().isEmpty()) {
        response.sendRedirect(request.getContextPath() + "/");
        return;
    }
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Home - Quiz System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

    <style>
        body {
            background-image: url('images/bg.png');
            background-size: cover;
            background-position: center;
            font-family: 'Poppins', sans-serif;
        }
        .card {
            transition: transform 0.3s;
            border-radius: 20px;
        }
        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 0 20px rgba(0,0,0,0.3);
        }
        h2 {
            font-weight: 700;
            color: #2c3e50;
        }
        .btn {
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="container mt-5 text-center">
    <h2 class="text-white mb-4">Welcome, <%= username %></h2>
    <p class="lead text-white">Choose a Quiz Category</p>

    <div class="row justify-content-center">
        <div class="col-md-4 mb-4">
            <div class="card p-3">
                <img src='/images/java.png' class="card-img-top" alt="Java Logo" style="height:150px; object-fit:contain;">
                <div class="card-body">
                    <h5 class="card-title text-primary">Java Quiz</h5>
                    <p class="card-text">Test your knowledge on Java programming, OOP concepts, and core APIs.</p>
                    <a href="${pageContext.request.contextPath}/quiz?category=Java" class="btn btn-outline-primary w-100">Start Java Quiz</a>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="card p-3">
                <img src='/images/python.png' class="card-img-top" alt="Python Logo" style="height:150px; object-fit:contain;">
                <div class="card-body">
                    <h5 class="card-title text-success">Python Quiz</h5>
                    <p class="card-text">Challenge your Python basics, syntax knowledge, and programming skills.</p>
                    <a href="${pageContext.request.contextPath}/quiz?category=Python" class="btn btn-outline-success w-100">Start Python Quiz</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
