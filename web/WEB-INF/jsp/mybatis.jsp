<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MYBATIS</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
          crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Navbar</a>
</nav>
<div class="container">
    <div class="row">
        <div class="col-4">
            <div class="list-group" id="list-tab" role="tablist">
                <a class="list-group-item list-group-item-action active"
                   id="list-home-list" data-toggle="list" href="#list-home"
                   role="tab" aria-controls="home">Id
                </a>
                <a class="list-group-item list-group-item-action"
                   id="list-profile-list" data-toggle="list" href="#list-profile"
                   role="tab" aria-controls="profile">Command
                </a>
                <a class="list-group-item list-group-item-action"
                   id="list-messages-list" data-toggle="list" href="#list-messages"
                   role="tab" aria-controls="messages">Description
                </a>
                <a class="list-group-item list-group-item-action"
                   id="list-settings-list" data-toggle="list" href="#list-settings"
                   role="tab" aria-controls="settings">Content
                </a>
            </div>
        </div>
        <div class="col-8">
            <ul class="list-group">
                <li class="list-group-item list-group-item-primary">
                    ${user.id}
                </li>
                <li class="list-group-item list-group-item-secondary">
                    ${user.command}
                </li>
                <li class="list-group-item list-group-item-success">
                    ${user.description}
                </li>
                <li class="list-group-item list-group-item-warning">
                    ${user.content}
                </li>
            </ul>
            <%--<div class="tab-content" id="nav-tabContent">--%>
                <%--<div class="tab-pane fade show active"--%>
                     <%--id="list-home" role="tabpanel" aria-labelledby="list-home-list">${user.id}--%>
                <%--</div>--%>
                <%--<div class="tab-pane fade " id="list-profile"--%>
                     <%--role="tabpanel" aria-labelledby="list-profile-list">${user.command}--%>
                <%--</div>--%>
                <%--<div class="tab-pane fade " id="list-messages"--%>
                     <%--role="tabpanel" aria-labelledby="list-messages-list">${user.content}--%>
                <%--</div>--%>
                <%--<div class="tab-pane fade " id="list-settings"--%>
                     <%--role="tabpanel" aria-labelledby="list-settings-list">${user.description}--%>
                <%--</div>--%>
            <%--</div>--%>
        </div>
    </div>
</div>
</body>
</html>