<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quiz Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

    <style>
        body {
            background-image: url('/images/first.png');
            background-size: cover;
            background-position: center;
            font-family: 'Poppins', sans-serif;
        }
        .card {
            backdrop-filter: blur(10px);
            background: rgba(255, 255, 255, 0.8);
            border-radius: 15px;
        }
        h2 {
            font-weight: 700;
            color: #2c3e50;
        }
        .btn-primary {
            background-color: #3498db;
            border: none;
            transition: 0.3s;
        }
        .btn-primary:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card shadow-lg p-4" style="width: 350px;">
        <h2 class="text-center mb-4">Quiz Login</h2>
        <form action="login" method="post">
            <div class="mb-3">
                <label class="form-label fw-bold">Username</label>
                <input type="text" name="username" class="form-control" required placeholder="Enter username"/>
            </div>
            <button type="submit" class="btn btn-primary w-100">Start Quiz</button>
        </form>
    </div>
</div>
</body>
</html>
