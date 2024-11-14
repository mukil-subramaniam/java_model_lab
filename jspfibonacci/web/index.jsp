<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Fibonacci Series Generator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }
        h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
            color: #555;
        }
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        button {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #0056b3;
        }
        h2 {
            color: #333;
            margin-top: 20px;
        }
        p {
            font-size: 18px;
            color: #555;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Fibonacci Series Generator</h1>
        <form method="post">
            <label for="num">Enter the number of terms:</label>
            <input type="number" id="num" name="num" required>
            <button type="submit">Generate</button>
        </form>

        <%
            String numStr = request.getParameter("num");
            if (numStr != null && !numStr.isEmpty()) {
                int n = Integer.parseInt(numStr);
                int a = 0, b = 1, sum;

                out.println("<h2>Fibonacci Series:</h2>");
                out.print("<p>" + a);
                if (n > 1) {
                    out.print(", " + b);
                }

                for (int i = 3; i <= n; i++) {
                    sum = a + b;
                    out.print(", " + sum);
                    a = b;
                    b = sum;
                }
                out.println("</p>");
            }
        %>
    </div>
</body>
</html>
