<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*,
		classes.Categoria,
		fachada.Fachada"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Fenix Web</title>
  <!-- Bootstrap core CSS-->
  <link href="tmp/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="tmp/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="tmp/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="tmp/css/sb-admin.css" rel="stylesheet">
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/javascript.js"></script>
  <link rel="stylesheet" href="styles/style.css">
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
</head>
<%
	Fachada fachada = Fachada.getInstancia();
	Categoria c = new Categoria();
	
	c = (Categoria) request.getAttribute("categoria");
	
%>

<body class="bg-dark">
  <div class="container">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header">Editar Categoria</div>
      <div class="card-body">
        <form method="post" action="cadastroCategoria?x=true">
        <div class="form-group">
            <label for="id">ID</label>
            <input class="form-control" id="id" name="id" type="text" placeholder="ID .." readonly="readonly" style="width:10%" value="<%= c.getId() %>">
          </div>
          <div class="form-group">
            <label for="descricao">Descrição</label>
            <input class="form-control" id="descricao" name="descricao" type="text" placeholder="Descrição .." value="<%= c.getDescricao() %>">
          </div>
          <div class="row">
            <div class="col md-6">
              <button type="submit" class="btn btn-primary btn-block" href="dashboard.jsp">Alterar</button>
            </div>
            <div class="col md-6">
              <a class="btn btn-warning btn-block" href="categoria.jsp">Voltar</a>
            </div>
            </div>
        </form>
      </div>
    </div>
  </div>
    <!-- Bootstrap core JavaScript-->
    <script src="tmp/vendor/jquery/jquery.min.js"></script>
    <script src="tmp/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="tmp/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="tmp/vendor/chart.js/Chart.min.js"></script>
    <script src="tmp/vendor/datatables/jquery.dataTables.js"></script>
    <script src="tmp/vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="tmp/js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="tmp/js/sb-admin-datatables.min.js"></script>
    <script src="tmp/js/sb-admin-charts.min.js"></script>
    <script type="text/javascript" src="js/javascript.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
  </div>
</body>

</html>
