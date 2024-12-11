<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Complaints List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #f5f7fa, #c3cfe2);
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border-radius: 8px;
        }
        .header h1 {
            margin: 0;
            font-size: 24px;
        }
        .header .exit-button {
            background-color: #f44336;
            color: white;
            border: none;
            padding: 8px 16px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            cursor: pointer;
            border-radius: 4px;
        }
        .count {
            font-size: 18px;
            font-weight: bold;
            color: #555;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
        .footer {
            text-align: center;
            margin-top: 20px;
            color: #555;
        }
        .delete-button {
            background-color: #f44336;
            color: white;
            border: none;
            padding: 8px 16px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Admin</h1>
        <form action="/exitPage" method="post">
            <button type="submit" class="exit-button">Exit Page</button>
        </form>
    </div>

    <div class="container">
        <div class="header">
            <p class="count">Number of Complaints: ${complaintCount}</p>
            <p class="count">Solved Complaints: ${solvedComplaints}</p>
            <p class="count">Pending Complaints: ${pendingComplaints}</p>
        </div>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Priority</th>
                    <th>Email ID</th>
                    <th>Complaint</th>
                    <th>Contact Number</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="complaint" items="${studentComplaints}"> 
          
   
                    <tr>
                        <td>${complaint.id}</td>
                        <td>${complaint.name}</td>
                        <td>${complaint.priority}</td>
                        <td>${complaint.email}</td>
                        <td>${complaint.complaint}</td>
                        <td>${complaint.contactNumber}</td>
                        <td>
                            <form action="/deleteComplaints" method="post">
                                <input type="hidden" name="id" value="${complaint.id}" />
                                 <input type="hidden" name="id" value="${complaint.email}" />
                                <button type="submit" class="delete-button">Delete</button>
                            </form>
                        </td>    
                    </tr>
              </c:forEach>
           </tbody>
        </table>
        <span style="color:green; text-align: center; padding: 10px; margin-left: 337px;font-size: 0.9em;">${message}</span>
    </div>

    <div class="footer">
        <p>&copy; 2024 Your Company</p>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
    $(document).ready(function() {
        alert('${toPriority}');
    });
    </script>
</body>
</html>
