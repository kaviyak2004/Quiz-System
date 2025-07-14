<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quiz Result</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #ffecd2, #fcb69f);
            font-family: 'Poppins', sans-serif;
        }
        .result-card {
            background: #fff;
            border-radius: 20px;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .result-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        }
        h2 {
            color: #e67e22;
            font-weight: 800;
        }
        .score-highlight {
            font-size: 2rem;
            color: #27ae60;
            font-weight: 700;
            animation: pop 1s ease;
        }
        @keyframes pop {
            0% { transform: scale(0); opacity: 0; }
            50% { transform: scale(1.2); opacity: 1; }
            100% { transform: scale(1); }
        }
        .btn-back {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            border: none;
            color: white;
            font-weight: 600;
            transition: 0.3s;
        }
        .btn-back:hover {
            opacity: 0.9;
        }
    </style>
</head>
<body>
<div class="container mt-5 text-center">
    <div class="result-card shadow p-4 mx-auto" style="max-width: 500px;">
        <h2>Quiz Result</h2>
        <p><strong>Username:</strong> ${username}</p>
        <p><strong>Category:</strong> ${category}</p>
        <p class="score-highlight"><strong>Score:</strong> ${score}</p>
        <a href="/" class="btn btn-back mt-3 px-4 py-2">Back to Home</a>
    </div>
</div>
</body>
</html>
