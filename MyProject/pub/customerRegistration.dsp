<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
      body {
        background-color: rgb(0, 0, 0);
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
      }
      
      #UserRegistration {
        max-width: 600px;
        margin: 0 auto;
        padding-top: 30px;
        padding-bottom: 30px;
		text-align: left;
		background-color: rgba(0, 0, 0, 0.5);
      }
      
      #background {
        background-image: url('https://www.desidakaar.com/wp-content/uploads/2016/10/List-of-Different-Barfi-Recipe.jpg');
		background-size: cover;
        background-position: 0 0;
        background-repeat: no-repeat;
        background-position: center;
      }
      
      table {
        width: 70%;
        margin-top: 30px;
        margin-left: 100px;
      }
      
      table td {
        color: white;
        font-size: 25px;
        padding-right: 10px;
      }
      
      input[type="text"], input[type="date"] {
        font-size: 15px;
        padding: 5px 1px;
        width: 100%;
      }

      input[type="submit"] {
        background-color: rgb(255, 0, 33);
        color: white;
        font-size: 15px;
		padding: 10px 20px;
        width: 50%;
        cursor: pointer;
        margin-left: 90px;
        margin-top: 30px;
        margin-bottom: 20px;
      }
	  button[id="homeButton"] {
        background-color: rgb(255, 0, 33);
        color: white;
        font-size: 15px;
		padding: 10px 20px;
        width: 50%;
        cursor: pointer;
        margin-left: 90px;
      }

      #jsonOutput {
        color: white;
        font-size: 20px;
        margin-top: 20px;
      }

      @media only screen and (max-width: 600px) {
        table td {
          font-size: 20px;
        }
      }
    </style>
  </head>
  <body>
    <center>
      <div style="display: flex; background-color: rgb(255, 255, 255);">
        <div  align = "justify">
          <img
            style="height: 80px; padding: 5px; margin-left: 15px;"
            src="https://cdn.dollsofindia.com/images/p/goddess-pictures/mahalakshmi-PZ41_l.jpg"
          >
        </div>
        <div style="flex: 1; text-align: center;">
             <h1 style="font-size: 35px; color: BLUE;">MAHA LAKSHMI SWEET HOME</h1>
        </div>
      </div>
      <div id="background">
      <form id="UserRegistration">
        <table>
          <tr>
            <td>User Name</td>
            <td>
              <input
                type="text"
                name="userName"
				id="userNameInput"
                placeholder="Enter User Name"
                required
              >
            </td>
          </tr>
          <tr>
            <td>Email</td>
            <td>
              <input
                type="text"
                name="email"
				id="emailInput"
                placeholder="Enter Email"
                required
              >
            </td>
          </tr>
          <tr>
            <td>Password</td>
            <td>
              <input
                type="text"
                name="password"
				id="passwordInput"
                placeholder="Enter Password"
                required
              >
            </td>
          </tr>
          <tr>
            <td>Surname</td>
            <td>
              <input
                type="text"
                name="surname"
				id="surnameInput"
                placeholder="Enter Surname"
                required
              >
            </td>
          </tr>
          <tr>
            <td>Date of Birth</td>
            <td colspan="2">
              <input
                type="date"
				id="dateInput"
                name="dateOfBirth"
                required
              >
            </td>
          </tr>
          </table>
          <table>
          <tr>
            <td>
              <input type="submit" value="SUBMIT">
			  <button id="homeButton">LOGIN</button>
            </td>
		  </tr>
		</table>
        <br>
        <br>
      </form>
	  <div id="jsonOutput"></div>
      </div>
	  <script>
        // JavaScript code remains unchanged.
		
	  document.getElementById("UserRegistration").addEventListener("submit", function (event) {
  event.preventDefault();

  // Get the input values from the form
  const userName = document.getElementById("userNameInput").value.trim();
  const email = document.getElementById("emailInput").value.trim();
  const password = document.getElementById("passwordInput").value.trim();
  const surname = document.getElementById("surnameInput").value.trim();
  const date = document.getElementById("dateInput").value.trim();

  // Make your API call here using the form data
  const apiUrl = `http://localhost:5555/restv2/customerRegistration?userName=${userName}&email=${email}&password=${password}&surname=${surname}&dateOfBirth=${date}`;

  fetch(apiUrl)
    .then((response) => response.json())
    .then((data) => {
      // Display the status message on the web page
      const jsonOutputElement = document.getElementById("jsonOutput");
      let outputString = "StatusMessage: " + data.statusMessage; // Use the correct key name
      jsonOutputElement.innerHTML = outputString;
    })
    .catch((error) => {
      console.error("Error fetching data:", error);
    });
});

document.getElementById("homeButton").addEventListener("click", function() {
  // Change the URL to the home page URL
  window.location.href = "http://localhost:5555/MyProject/LoginAndSignUp.dsp";
});

      </script>
</center>
  </body>
</html>
