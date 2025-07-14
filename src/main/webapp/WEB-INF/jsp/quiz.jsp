<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>${category} Quiz</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #74ebd5, #acb6e5);
            font-family: 'Poppins', sans-serif;
        }
        h2 {
            font-weight: 700;
            color: #34495e;
            text-shadow: 1px 1px 2px #ccc;
        }
        .quiz-card {
            background: #ffffff;
            border-radius: 15px;
            padding: 20px;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .quiz-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }
        .form-check-label {
            font-weight: 500;
            color: #2c3e50;
        }
        .btn-submit {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            border: none;
            color: white;
            font-weight: bold;
            transition: 0.3s;
        }
        .btn-submit:hover {
            opacity: 0.9;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">${category} Quiz</h2>

    <form action="submit" method="post">
        <input type="hidden" name="username" value="${username}"/>
        <input type="hidden" name="category" value="${category}"/>

        <c:set var="index" value="1"/>
        <c:forEach items="${questions}" var="entry">
            <div class="quiz-card mb-3">
                <p><strong>${index}. ${entry.key}</strong></p>
                <c:forEach items="${entry.value}" var="option">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="q${index}" value="${option}" required/>
                        <label class="form-check-label">${option}</label>
                    </div>
                </c:forEach>
            </div>
            <c:set var="index" value="${index + 1}"/>
        </c:forEach>

        <div class="text-center mt-4">
            <button type="submit" class="btn btn-submit btn-lg px-5">Submit Quiz</button>
        </div>
    </form>
</div>
</body>
</html>
