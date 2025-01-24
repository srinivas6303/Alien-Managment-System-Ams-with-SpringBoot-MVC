<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alien Management</title>
    <style>
        /* General Styles */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
            box-sizing: border-box;
        }

        .container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 1200px; /* Increased width to accommodate 3 columns */
            text-align: center;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        .form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr; /* Three columns */
            gap: 20px; /* Space between grid items */
            margin-bottom: 20px;
        }

        form {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        form p {
            margin: 10px 0;
        }

        input[type="text"] {
            width: 90%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="submit"] {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        hr {
            border: 0;
            height: 1px;
            background: #ddd;
            margin: 20px 0;
        }

        .form-title {
            font-size: 18px;
            font-weight: bold;
            color: #555;
            margin-bottom: 10px;
        }

        /* Additional Styles for Get Alien By Name Form */
        .get-alien-by-name-form {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Grid Layout for Forms -->
        <div class="form-grid">
            <!-- Add Alien Form -->
            <form action="addAlien" method="POST">
                <div class="form-title">ADD ALIEN</div>
                <p>ID: <input type="text" name="aid" required></p>
                <p>NAME: <input type="text" name="aname" required></p>
                <p><input type="submit" value="SUBMIT"></p>
            </form>

            <!-- Delete Alien Form -->
            <form action="deleteAlien" method="POST">
                <div class="form-title">DELETE ALIEN</div>
                <p>ID: <input type="text" name="aid" required></p>
                <p><input type="submit" value="SUBMIT"></p>
            </form>

            <!-- Update Alien Form -->
            <form action="updateAlien" method="POST">
                <div class="form-title">UPDATE ALIEN</div>
                <p>ID: <input type="text" name="aid" required></p>
                <p>NAME: <input type="text" name="aname" required></p>
                <p><input type="submit" value="SUBMIT"></p>
            </form>

            <!-- Get One Alien Form -->
            <form action="getAlien" method="GET">
                <div class="form-title">GET ONE ALIEN</div>
                <p>ID: <input type="text" name="aid" required></p>
                <p><input type="submit" value="SUBMIT"></p>
            </form>

            <!-- Get Alien By Name Form -->
            <form action="getAlienByName" method="GET">
                <div class="form-title">GET ALIEN BY NAME</div>
                <p>NAME: <input type="text" name="aname" required></p>
                <p><input type="submit" value="SUBMIT"></p>
            </form>

            <!-- Get All Aliens Form -->
            <form action="getAliens" method="GET">
                <div class="form-title">GET ALL ALIENS</div>
                <p><input type="submit" value="SEE ALL"></p>
            </form>
        </div>
    </div>
</body>
</html>