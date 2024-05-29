<!DOCTYPE html>
<html>
  <head>
    <title>Login</title>
    <style>
      /* Add styles for the background image */
      body {
        background-image: url('Assests/images/2.jpg');
        background-size: cover;
        background-position: center;
      }
      
      /* Add styles for the login form */
      #login-form {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        width: 400px;
        margin: 100px auto;
      }
      
      /* Add styles for the form inputs and submit button */
      input[type="text"],
      input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: none;
        border-radius: 3px;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
      }
      
      input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 3px;
        cursor: pointer;
        transition: background-color 0.3s ease;
      }
      
      input[type="submit"]:hover {
        background-color: #0056b3;
      }
      
    </style>
  </head>
  <body>
    <div class="conatiner" id="login-form">
      <h2>User Login</h2>
      <form action="LoginUser" method="post">
        <label for="username">Username:</label>
        <input type="text" name="username" id="username">
        
        <label for="password">Password:</label>
        <input type="password" name="password" id="password">
        
        <input type="submit" class="btn btn-primary" value="Login">
      </form>
    </div>
  </body>
</html>
