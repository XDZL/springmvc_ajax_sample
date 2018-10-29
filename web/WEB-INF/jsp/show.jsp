<%--
  Created by IntelliJ IDEA.
  User: sun
  Date: 2018/10/27
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ADD USER</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
          crossorigin="anonymous">
    <%--<script src="js/jquery-1.8.3.js"></script>--%>
    <%--<script src="https://cdn.bootcss.com/jquery/3.3.1/core.js"></script>--%>
    <%--<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>--%>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>

    <script>
        $(document).ready(function(){
            $("button").click(function(){
                var command = $("#command").val();
                var description = $("#description").val();
                var content = $("#content").val();
                var mydata = {
                    "command":command,
                        "description":description,
                        "content":content
                };
                $.ajax({
                    url:"add",
                    type:"POST",
                    dataType:"json",
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json'
                    },
                    data:JSON.stringify(mydata),
                    success : function(data) {
                    alert("haha"+data.command);
                }
            });
            });
        });
        // $(function() {
        //     $("#haha").click(function () {
        //         // $.ajax({
        //         //     url:"add",
        //         //     type:"POST",
        //         //     dataType:"json",
        //         //     success : function(response) {
        //         //         alert()
        //         //     }
        //         // });
        //         alert("haha")
        //     });
        // });
    </script>
</head>
<body>
    <%--<form action="add" method="post">--%>
        <%--command<input name="command" value="" type="text">--%>
        <%--description<input name="description" value="" type="text">--%>
        <%--content<input name="content" value="" type="text">--%>
        <%--<input type="submit" value="submit">--%>
    <%--</form>--%>
    <div class="container">
        <form action="add" method="post">
            <div class="form-group">
                <label for="command">Enter command</label>
                <input type="text" class="form-control" id="command" name="command"  placeholder="Enter command">
            </div>
            <div class="form-group">
                <label for="description">Enter description</label>
                <input type="text" class="form-control" id="description" name="description" placeholder="Enter description">
            </div>
            <div class="form-group">
                <label for="content">Enter content</label>
                <input type="text" class="form-control" id="content" name="content" placeholder="Enter content">
            </div>
            <button type="submit" id="haha" name="haha" class="btn btn-primary">Submit</button>
        </form>
    </div>

</body>
</html>
