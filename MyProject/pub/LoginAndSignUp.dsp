<!DOCTYPE html>
<html>
<head>
    <title>Login and Signup Page</title>
    <style>
        /* Basic CSS for styling the page */
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://www.desidakaar.com/wp-content/uploads/2016/10/List-of-Different-Barfi-Recipe.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            display: flex;
            flex-direction: column;
            justify-content: flex-start; /* Align header to the top */
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .header {
            display: flex;
            align-items: center;
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white background */
            border-radius: 10px;
            width: 80%; /* Adjust the percentage width as needed */
            padding: 10px;
            margin-top: 20px; /* Add some top margin to the header */
        }

        .header img {
            max-width: 100px; /* Set the maximum width for the image */
            margin-right: 20px; /* Add right margin to the image to separate it from the text */
        }

        .header h1 {
            margin: 0;
            color: blue;
            text-align: center; /* Center the text within the header */
            flex-grow: 1; /* Allow the text to fill the remaining space to the right */
        }

        .container {
            text-align: center;
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white background */
            padding: 20px;
            border-radius: 10px;
            width: 80%; /* Adjust the percentage width as needed */
        }

        .form {
            margin: 20px 0;
        }

        button {
            padding: 10px 20px;
            font-size: 18px;
        }

        /* Media query for screens smaller than 768px */
        @media (max-width: 768px) {
            .container {
                width: 50vw; /* Adjust the percentage width for smaller screens */
            }
        }
    </style>
</head>
<body>
    <div class="header">
        <img src="https://cdn.dollsofindia.com/images/p/goddess-pictures/mahalakshmi-PZ41_l.jpg" alt="Mahalakshmi Image">
        <h1>MAHALAKSHMI SWEET HOME</h1>
    </div>
    <h1></h1>
    <div class="container">
        <div class="form">
            <h1>Login or Signup</h1>
            <a href="login.php"><button>Login</button></a>
            <!-- Updated href attribute to the desired link -->
            <a href="http://desktop-3fnrh7r:5555/MyProject/customerRegistration.dsp"><button>Signup</button></a>
        </div>
    </div>
</body>
</html>
