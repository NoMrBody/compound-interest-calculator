<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Compound Interest Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            max-width: 600px;
            margin: 40px auto;
            padding: 20px;
            background-color: #f5f5f5;
        }

        .calculator-container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
        }

        .error {
            color: #dc3545;
            margin-bottom: 20px;
            font-weight: bold;
            background-color: #f8d7da;
            border-radius: 4px;
            text-align: center;
        }

        form {
            display: grid;
            gap: 15px;
        }

        .form-group {
            display: grid;
            gap: 5px;
        }

        label {
            font-weight: bold;
            color: #333;
        }

        input {
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 16px;
        }

        input:focus {
            outline: none;
            border-color: #4CAF50;
            box-shadow: 0 0 5px rgba(76, 175, 80, 0.2);
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            margin-top: 10px;
        }

        button:hover {
            background-color: #45a049;
        }

        .result {
            margin-top: 20px;
            padding: 15px;
            background-color: #e8f5e9;
            border-radius: 4px;
            font-weight: bold;
            color: #2e7d32;
        }
    </style>
</head>
<body>
    <div class="calculator-container">
        <h1>Compound Interest Calculator</h1>

        <p class="error">${error}</p>

        <form action="/" method="post">
            <div class="form-group">
                <label for="principal-amount">Principal Amount:</label>
                <input type="number" id="principal-amount" name="principal-amount" min="1" value="${principal}">
            </div>

            <div class="form-group">
                <label for="interest">Interest Percentage:</label>
                <input type="number" id="interest" name="interest" min="1" max="100" value="${interest}">
            </div>

            <div class="form-group">
                <label for="years">Number of Years:</label>
                <input type="number" id="years" name="years" min="1" value="${years}">
            </div>

            <div class="form-group">
                <label for="compounding-period">Times per Year:</label>
                <input type="number" id="compounding-period" name="compounding-period" min="1" max="12" value="${compoundingPeriod}">
            </div>

            <button type="submit">Calculate</button>
        </form>

        <div class="result">
            <p>Result: ${result}</p>
        </div>
    </div>
</body>
</html>