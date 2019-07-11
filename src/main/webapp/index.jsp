<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<html> 
<head> 
<style>
html, body {   
 width: 100%;   
height: 100%;   
font-family: "Helvetica Neue", Helvetica, sans-serif;   
color: #444;   
-webkit-font-smoothing: antialiased;    background: #f0f0f0;
}
#container {
position: fixed;
width: 340px;
height: 280px;
top: 50%;
left: 50%;
margin-top: -140px;
margin-left: -170px;
}
form {
    margin: 0 auto;
    margin-top: 20px;
}
label {
    color: #555;
    display: inline-block;
    margin-left: 18px;
    padding-top: 10px;
    font-size: 14px;
}
p a {
    font-size: 11px;
    color: #aaa;
    float: right;
    margin-top: -13px;
    margin-right: 20px;
}
p a:hover {
    color: #555;
}
input {
    font-family: "Helvetica Neue", Helvetica, sans-serif;
    font-size: 12px;
    outline: none;
}
input[type=text],
input[type=password] {
    color: #777;
    padding-left: 10px;
    margin: 10px;
    margin-top: 12px;
    margin-left: 18px;
    width: 290px;
    height: 35px;
}
#lower {
    background: #ecf2f5;
    width: 100%;
    height: 69px;
    margin-top: 20px;
}
input[type=submit] {
    float: right;
    margin-right: 20px;
    margin-top: 20px;
    width: 80px;
    height: 30px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<title>JSP Page</title> 
</head> 
<body> 
<h1>Login</h1> 
<div id="container">
<form action="Check.jsp" method="post"> <br/>
<label for="username">Username:</label>
<input type="text" name="username"> <br/>
<label for="username">Password:</label>
<input type="password" name="password"> <br/>
<div id="lower">
<input type="submit" value="Submit"> 
</div>
</form> 
</div>
</body> 
</html>
