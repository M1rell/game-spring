<%@ page language= java contentType-= text/Nntml; charset=UTF-8 pageEncoding= UTF-8 %>
<%@ taglib uri="Jakarta.tags.core” prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8" />
<titleeditar Jogo</title>
<link href="https://cdn. jsdelivr.net/npm/bootstrapês.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
<hpEditar Jogo</hi>
<form action="/jogo/update" method="post">
<input type="hidden" name="id" value="$(jogo.id)" />
<div class="form-group">
<label for="título">Titulo:</label>
<input type="text" name="titulo" class="form-control" value="$(jogo.título)" />
</div>
<div class="form-group">
<label for="categoria"»Categoria:</label>
<select name="categoria” class="form-select">
<cifortach var="c" items="$(categorias)">
<option $(jogo.categoria.id == c.id ? "selected" : "") value="$(c.id)">$(c.nome)</option>
</ciforeach>
</select>
</div>
<div class="form-group">
<label for="plataforma">Plataforma(s):</label>
<ciforeach var="p" items="$(plataformas)">
<div class="custom-control custom-checkbox">
<input type="checkbox" $(jogo.plataformas.contains(p) ? "checked" : "")
class="custom-control-input" name="plataformas" value="$(p.id)" id="$(p.id)" />
<label class="custom-control-label" for="$(p.id)'">$(p.nome)</label>
</div>
</ciforeach>
</div>
<br />
<a href="/jogo/list" class="btn btn-primary" »voltar</a>
<button type="submit" class="btn btn-success">Salvar</button>
</form>
</div>
</body>
</html>
