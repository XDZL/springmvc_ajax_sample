<%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2018/10/27
  Time: 15:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
          crossorigin="anonymous">
</head>
<body>
<h2 >Submitted User Information</h2>

<div class="container">
    <ul class="list-group">
        <li class="list-group-item list-group-item-primary">
            ${Command}
        </li>
        <li class="list-group-item list-group-item-secondary">
            ${Description}
        </li>
        <li class="list-group-item list-group-item-success">
            ${Content}
        </li>
    </ul>
</div>
</body>
</html>
