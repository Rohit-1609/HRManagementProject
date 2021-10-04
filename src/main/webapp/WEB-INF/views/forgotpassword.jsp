<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Forgot Password</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        body{
    background:#b16ae0;
}
.forget-pwd > a{
    color: #dc3545;
    font-weight: 500;
}
.forget-password .panel-default{
    padding: 31%;
    margin-top: -27%;
}
.forget-password .panel-body{
    padding: 15%;
    margin-bottom: -50%;
    background: #fff;
    border-radius: 5px;
    -webkit-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
img{
    width:40%;
    margin-bottom:10%;
}
.btnForget{
    background: #eb1325;
    border: 1px;;
}

.btnLogin{
    background: #9baa16;
    
    border: 1px;;
}


.forget-password .dropdown{
    width: 100%;
    border: 1px solid #ced4da;
    border-radius: .25rem;
}
.forget-password .dropdown button{
    width: 100%;
}
.forget-password .dropdown ul{
    width: 100%;
}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container forget-password">
            <div class="row">
                <div class="col-md-12 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="text-center">
                                <img src="../resources/images/resetpass.png" alt="car-key" border="0">
                                <h2 class="text-center"><i>Forgot Password?</i></h2>
                                <p>You can retrieve your password here.</p>
                                <form id="register-form" role="form" autocomplete="off" class="form" action="<%=request.getContextPath()%>/forgotPassword"  method="post">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <select class="form-control" id="forgotPassword" name="forgotPassword">
                                                <option selected="true" disabled="disabled">Please Select any one field</option>
                                                <option value="mobile">Which is your mobile number?</option>
                                                <option value="email">What is your email address?</option>
                                                <option value="id">What is your id?</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                            <input id="forgetAnswer" name="forgetAnswer" placeholder="Answer" class="form-control"  type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input name="btnForget" class="btn btn-lg btn-primary btn-block btnForget" value="Reset Password" type="submit" >
                                        <input name="btnLogin" class="btn btn-lg btn-secondary btn-block btnForget" value="Login" type="button" onclick="location.href='index.jsp';">
                                       
                                            
                                            
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<script type="text/javascript">

</script>
</body>
</html>
