<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,
		classes.Produto,
		classes.Categoria,
		classes.Fornecedor,
		fachada.Fachada"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Fenix Web</title>
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/javascript.js"></script> 
  <!-- Bootstrap core CSS-->
  <link href="tmp/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="tmp/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="tmp/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="tmp/css/sb-admin.css" rel="stylesheet">
  <link rel="stylesheet" href="styles/style.css">

</head>
<script>
</script>
<body class="fixed-nav sticky-footer bg-dark sidenav-toggled" id="page-top">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="dashboard.jsp">Fenix Web</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
      <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="dashboard.jsp">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Dashboard</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Cliente">
          <a class="nav-link" href="cliente.jsp">
            <i class="fa fa-fw fa-user"></i>
            <span class="nav-link-text">Cliente</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Fornecedor">
          <a class="nav-link" href="fornecedor.jsp">
            <i class="fa fa-fw fa-truck"></i>
            <span class="nav-link-text">Fornecedor</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Estoque">
          <a class="nav-link" href="produto.jsp">
            <i class="fa fa-fw fa-shopping-cart"></i>
            <span class="nav-link-text">Estoque</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Categoria">
          <a class="nav-link" href="categoria.jsp">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">Categoria</span>
          </a>
        </li>
       <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Pedido">
          <a class="nav-link" href="pedido.jsp">
            <i class="fa fa-fw fa-sticky-note"></i>
            <span class="nav-link-text">Pedido</span>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Example DataTables Card-->
      <div class="card mb-3">
        <div class="card-header row">
          <div class="col md-6">
          <i class="fa fa-truck"></i> Estoque 
          </div>
          <div class="col md-6 text-right">
          <button class="btn btn-primary" data-toggle="modal"
          data-target="#modal-mensagem">Cadastrar Produto</button>
          </div>
          </div>
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th><em class="fa fa-cog"></em></th>
                  <th class="hidden-xs">ID</th>
                  <th>Descrição</th>
                  <th>Valor Unitario</th>
                  <th>Quantidade</th>
                  <th>Fornecedor</th>
                  <th>Categoria</th>

                </tr>
              </thead>
             <tbody>
            <%
            Fachada fachada = Fachada.getInstancia();
            List<Produto> produtos = fachada.listarProduto();
            
            for (Produto produto : produtos) {
            %>
            <tr>
              <td align="center" style="width:9% !important">
                <a class="btn btn-default" href="editarProduto?id=<%= produto.getId() %>">
                  <em class="fa fa-pencil"></em>
                </a> 
                <a href="deleteProduto?id=<%= produto.getId() %>"  class="btn btn-danger">
                  <em class="fa fa-trash"></em>
                </a>
              </td>
              <td class="hidden-xs"><%= produto.getId() %></td>
              <td><%= produto.getDescricao() %></td>
              <td><%= produto.getValorUnitario() %> R$</td>
              <td><%= produto.getQuantidade() %> CX</td>
              <td> <%= produto.getFornecedor().getNome() %> </td>
              <td> <%= produto.getCategoria().getDescricao() %> </td>
            </tr>
            <%
            }
            %>
          </tbody>
            </table>
          </div>
        </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © FenixWeb 1.0v</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Cadastro Modal-->
    <div class="modal fade" id="modal-mensagem" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Cadastro Categoria</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">
          <form class="form-horizontal center-form" method="post"
                  action="cadastroProduto">
                  <div class="form-group">
                    <div class="input-group">
                      <span class="input-group-addon"><i
                        class="fa fa-user fa" aria-hidden="true"></i></span> <input
                        type="text" class="form-control" name="descricao"
                        id="descricao" placeholder="Descrição" />
                    </div>
                    <br/>
                    <div class="input-group">
                      <span class="input-group-addon"><i
                        class="fa fa-user fa" aria-hidden="true"></i></span> <input
                        type="text" class="form-control" name="valorUnitario"
                        id="valorUnitario" placeholder="Valor da Unidade" />
                    </div>
                    <br/>
                    <div class="input-group">
                      <span class="input-group-addon"><i
                        class="fa fa-user fa" aria-hidden="true"></i></span> <input
                        type="text" class="form-control" name="quantidade"
                        id="quantidade" placeholder="Quantidade" />
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="cols-sm-10">
                      <div class="input-group">
                        <span class="input-group-addon"><i
                          class="fa fa-venus-mars fa" aria-hidden="true"></i></span> 
                          <select style="width: 100%" id="categoria" name="categoria" class="form-control">
                          <%
                            
                            List<Categoria> categorias = fachada.listarCategoria();
                            
                            for (Categoria categoria : categorias) {
                          %>
                          <option value="<%= categoria.getId() %>">
                            <%= categoria.getDescricao() %>
                          </option>
                          <%
                          }
                          %>
                        </select>
                      </div>
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <div class="cols-sm-10">
                      <div class="input-group">
                        <span class="input-group-addon"><i
                          class="fa fa-venus-mars fa" aria-hidden="true"></i></span> 
                          <select
                          style="width: 100%" id="fornecedor" name="fornecedor"
                          class="form-control">
                          <%
                            List<Fornecedor> fornecedores = fachada.listarFornecedor();
                            for (Fornecedor fornecedor : fornecedores) {
                          %>
                          <option value="<%= fornecedor.getId() %>">
                            <%= fornecedor.getNome() %>
                          </option>
                          <%
                          }
                          %>
                        </select>
                      </div>
                    </div>
                  </div>


                  <div class="form-group ">
                    <button type="submit"
                      class="btn btn-primary btn-lg btn-block login-button">Cadastrar</button>
                  </div>
                </form>
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="tmp/vendor/jquery/jquery.min.js"></script>
    <script src="tmp/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="tmp/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="tmp/vendor/datatables/jquery.dataTables.js"></script>
    <script src="tmp/vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="tmp/js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="tmp/js/sb-admin-datatables.min.js"></script>
    <script type="text/javascript" src="js/javascript.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.10/jquery.mask.js"></script>
    <script type="text/javascript" src="js/jquery-maskmoney.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
  </div>
</body>

</html>