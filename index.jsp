<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Sticky Footer Template for Bootstrap</title>
    <%@ include file="/sitewide/globals.jsp" %>
    <script src="./resources/js/components/jquery.colorbox.js"></script>
</head>

<body>
<div class="page-header">
    <%@ include file="/sitewide/header.jsp" %>
</div>
<!-- Begin page content -->
<div class="container-fluid">

    <div class="body-content container">
        <h1>Forms</h1>
        <div class="row">
            <div class="col-md-6">
                <div class="left_col">
                    <ul class="fancybullet">
                        <li><a href="./form-demos/demo/html5.html" class="iframe">HTML5</a></li>
                        <li><a href="./form-demos/demo/validators.html" class="iframe">Validators</a></li>
                        <li><a href="./form-demos/demo/invisible.html" class="iframe">Invisible</a></li>
                        <li><a href="./form-demos/demo/attribute.html" class="iframe">Attribute</a></li>
                        <li><a href="./form-demos/demo/file.html" class="iframe">File</a></li>
                        <li><a href="./form-demos/demo/ajaxSubmit.html" class="iframe">Ajax PHP Submit</a>
                        </li>
                        <li><a href="./form-demos/demo/choice.html" class="iframe">Choice</a></li>
                        <li><a href="./form-demos/demo/collapse.html" class="iframe">Collapse</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-6">
                <div class="right_col">
                    <ul class="fancybullet">
                        <li><a href="${contextPath}/form-demos/demo/mailgun.html" class="iframe">Mailgun</a>
                        </li>
                        <li><a href="${contextPath}/form-demos/demo/tab.html" class="iframe">Tab</a></li>
                        <li><a href="${contextPath}/form-demos/demo/dynamic.html" class="iframe">Dynamic
                            1</a></li>
                        <li><a href="${contextPath}/form-demos/demo/dynamic2.html" class="iframe">Dynamic
                            2</a></li>
                        <li><a href="${contextPath}/form-demos/demo/dynamic4.html" class="iframe">Dynamic
                            3</a></li>
                        <li><a href="${contextPath}/form-demos/demo/selector2.html" class="iframe">Selector
                            2</a></li>
                        <li><a href="${contextPath}/form-demos/demo/typehead.html"
                               class="iframe">Typehead</a></li>
                        <li><a href="./form-demos/demo/event3.html" class="iframe">Captcha</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</div>

<p>&nbsp;</p>
<footer>
   <%@ include file="/sitewide/footer.jsp" %>
</footer>
</body>
</html>
