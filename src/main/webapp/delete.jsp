<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	 
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap');
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            background-color: #8EC5FC;
            background-image: linear-gradient(62deg, #8EC5FC 0%, #e1c5fc 100%);
            font-family: 'Noto Sans', sans-serif;
            display: flex;
            justify-content: center;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }
        .title {
            text-transform: uppercase;
            font-size: 2rem;
            font-weight: 600;
            margin-bottom: 2rem;
        }
        .input input {
            font-size: 16px;
            padding: 10px;
            width: 250px;
            outline: none;
            border: none;
            border-radius: 5px;

        }
        .submit {
            text-align: center;
        }
        .submit input{
            margin-top: 2rem;
            border: none;
            width: 200px;
            border-radius: 8px;
            font-size: 1rem;
            font-weight: 600;
            cursor: pointer;
            color: white;
            text-transform: uppercase;
            background-color: #ff3939c9;
            padding: 15px;
        }

    </style>
</head>
<body>
<%
	if(session.getAttribute("username") == null){
			response.sendRedirect("index.jsp");
  } %>
     <div class="title">Delete Student</div>

     <form action="DeleteController" method="post">
        <div class="input"><input type="text" placeholder="Enter Roll Number To Delete" name = "rollno"></div>
        <div class="submit"><input type="submit" value="delete"></div>
     </form>
</body>
</html>