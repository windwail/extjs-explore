<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0046)https://getbootstrap.com/examples/dashboard/?# -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!-- Placed at the end of the document so the pages load faster -->
    <script src="./js/jquery.min.js"></script>

    <link rel="icon" href="https://getbootstrap.com/favicon.ico">

    <title>Dashboard Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="./css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="./css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./css/dashboard.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="./js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="./js/holder.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="./js/ie10-viewport-bug-workaround.js"></script>


    <!-- LIBS -->
    <link rel="stylesheet" type="text/css" href="/extjs/resources/css/ext-all.css" />
    <script type="text/javascript" src="/extjs/ext-all-debug.js"></script>

    <!-- APP -->
    <script type="text/javascript" src="/app/app.js"></script>
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="https://getbootstrap.com/examples/dashboard/?#">Project name</a>
        </div>


        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="https://getbootstrap.com/examples/dashboard/?#">Dashboard</a></li>
                <li><a href="https://getbootstrap.com/examples/dashboard/?#">Settings</a></li>
                <li><a href="https://getbootstrap.com/examples/dashboard/?#">Profile</a></li>
                <li><a href="https://getbootstrap.com/examples/dashboard/?#">Help</a></li>
            </ul>
            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="Search...">
            </form>
        </div>

    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li id="life-cycle"><a href="/index.jsp?p=life-cycle">Life cycle</a></li>
                <li id="simplepanel"><a href="/index.jsp?p=simplepanel">Simple panel</a></li>
                <li id="window"><a href="/index.jsp?p=window">Window</a></li>
            </ul>

        </div>

        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

            <% if (request.getParameter("p") != null) { %>

                <% if(request.getParameter("p").equalsIgnoreCase("simplepanel")) { %>
                    <jsp:include page="simplepanel.jsp"/>
                <% } %>

                <% if(request.getParameter("p").equalsIgnoreCase("life-cycle")) { %>
                    <jsp:include page="life-cycle.jsp"/>
                <% } %>

                <% if(request.getParameter("p").equalsIgnoreCase("window")) { %>
                    <jsp:include page="window.jsp"/>
                <% } %>

            <% } %>

            <script>
                function getParameterByName(name, url) {
                    if (!url) url = window.location.href;
                    name = name.replace(/[\[\]]/g, "\\$&");
                    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
                            results = regex.exec(url);
                    if (!results) return null;
                    if (!results[2]) return '';
                    return decodeURIComponent(results[2].replace(/\+/g, " "));
                }

                $('#'+getParameterByName('p')).addClass('active');
            </script>

        </div>

    </div>
</div>
</body></html>