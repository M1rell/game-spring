<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<IDOCTYPE htul>
<html lang="pt-br">
<head>
<meta charset="UTF-8" />
<title>seditar plataforma</title>
<link href="https://cdn. jsdelivr.net/npm/bootstrapêS.3.2/dist/css/bootstrap.min.css” rel="stylesheet">
</head>
<body>
<div class="container">
<hEditar Plataforma</h1>
<form action="/plataforma/update" method="post">
<input type="hidden" name="id" value="${plataforma.id}" />
<div class="form-group">
<label for="nome">Nome:</label>
<input type="text" name="nome" class="form-control" value="${plataforma.nome}" />
<div>
<br />
<a href="/plataforma/1ist” class="btn btn-primary" >voltar</a>
<button type="submit” class="btn btn-success">Salvar</button>
</form
</div>
</body>
</html>
