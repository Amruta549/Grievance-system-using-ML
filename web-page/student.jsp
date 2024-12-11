<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Complaints Management Portal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }
        header {
            background: #333;
            color: #fff;
            padding-top: 30px;
            min-height: 70px;
            border-bottom: #77d42a 3px solid;
        }
        header a {
            color: #fff;
            text-decoration: none;
            text-transform: uppercase;
            font-size: 16px;
        }
        header ul {
            padding: 0;
            list-style: none;
        }
        header li {
            float: left;
            display: inline;
            padding: 0 20px 0 20px;
        }
        header #branding {
            float: left;
        }
        header #branding h1 {
            margin: 0;
        }
        header nav {
            float: right;
            margin-top: 10px;
        }
        header .highlight, header .current a {
            color: #77d42a;
            font-weight: bold;
        }
        header a:hover {
            color: #ccc;
        }
        #dashboard {
            padding: 20px;
            background: #fff;
            margin-top: 20px;
            border: #ccc 1px solid;
        }
        #register-complaint {
            padding: 20px;
            background: #fff;
            margin-top: 20px;
            border: #ccc 1px solid;
        }
        footer {
            background: #333;
            color: #fff;
            text-align: center;
            padding: 30px 0;
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <div id="branding">
                <h1>Complaints Management Portal</h1>
            </div>
            <nav>
                <ul>
                    <li class="current"><a href="#">Dashboard</a></li>
                    <li><a href="#register-complaint">Register Complaint</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <div class="container">
        <section id="dashboard">
            <h2>Dashboard</h2>
            <p>Welcome to the Complaints Management Portal. This portal allows you to manage and monitor your complaints efficiently.</p>
            <h3>Your Complaints</h3>
            <ul>
                <li>Total Complaints Lodged: <strong>10</strong></li>
                <li>Complaints in Progress: <strong>3</strong></li>
                <li>Solved Complaints: <strong>7</strong></li>
            </ul>
            <h3>Solved Complaints</h3>
            <ul>
                <li>ID: 001 - Date: 2024-01-15 - Issue: Internet down</li>
                <li>ID: 002 - Date: 2024-02-20 - Issue: Billing error</li>
                More solved complaints here
            </ul>
        </section> 

        <section id="register-complaint">
    <h2>Register New Complaint</h2>
    <form action="/submit_complaint" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>

        <label for="email">Email ID:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="branch">Branch ID:</label>
        <input type="text" id="branch" name="branch" required><br><br>

        <label for="description">Complaint Description:</label>
        <textarea id="description" name="description" required></textarea><br><br>

        <label for="college">College ID:</label>
        <input type="text" id="college" name="college" required><br><br>

        <label for="contact">Contact Information:</label>
        <input type="tel" id="contact" name="contact" required><br><br>

        <input type="submit" value="Submit Complaint">
    </form>
</section>

    </div>

    <footer>
        <p>Complaints Management Portal &copy; 2024</p>
    </footer>
</body>
</html>