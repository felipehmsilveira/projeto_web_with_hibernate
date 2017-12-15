<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*,
		classes.Usuario,
		fachada.Fachada"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Cadastrar Usuario</title>
  <!-- Bootstrap core CSS-->
  <link href="tmp/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="tmp/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="tmp/css/sb-admin.css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/javascript.js"></script>
	<link rel="stylesheet" href="styles/style.css">
</head>
<body class="bg-dark">
  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header login-title text-center">Cadastrar Usuario</div>
      <div class="card-wall">
       <img class="profile-img" 
                  src="http://pluspng.com/img-png/everything-you-need-to-know-on-muffler-deletes-http-forum-phoenix-icon-png-256.png"
                    alt="">
      </div>
      <div class="card-body">
        <form class="center-form" method="post" action="cadastroUsuario">
        
          <div class="form-group">
            <label for="login">email</label>
            <input class="form-control" id="email" name="email" type="text" placeholder="email">
          </div>
          
            <div class="form-group">
            <label for="login">Login</label>
            <input class="form-control" id="login" type="text" name="login" placeholder="Login">
          </div>
          
          <div class="form-group">
            <label for="password">Password</label>
            <input class="form-control" id="password" name="password" type="password" placeholder="Password">
          </div>
        
          <div class="form-group">
                    <div class="cols-sm-10">
                      <div class="input-group">
                        <span class="input-group-addon"><i
                          class="fa fa-venus-mars fa" aria-hidden="true"></i></span> <select
                          style="width: 100%" id="tipo" name="tipo"
                          class="form-control">
                          <option value="ADMINISTRADOR">ADMINISTRADOR</option>
                          <option value="VENDEDOR">VENDEDOR</option>
                        </select>
                      </div>
                    </div>
                  </div>
            <div class="form-group ">
                    <button type="submit"
                      class="btn btn-primary btn-lg btn-block login-button">Cadastrar</button>
             </div>
        </form>
        <div class="text-center">
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="tmp/vendor/jquery/jquery.min.js"></script>
  <script src="tmp/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="tmp/vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
