<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib uri="jakarta.tags.core” prefix="c" %>
    <!DOCTYPE html>
    <html lang="pt-br">
    <head>
    <meta charset="UTF-8" />
    <title»Novo Jogo</títle>
    <link href="https://cdn. jsdelivr.net/npn/bootstrapdS.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
    <div class="container">
    <h1>Novo Jogo</h1>
    <form action="/jogo/insert" method="post">
    <div class="form-group">
    <label for="titulo"sTítulo:</label>
    <input type="text" name="titulo" class="form-control" />
    </div>
    <div class="form-group">
    <label for="categoria">Categoria:</label>
    <select nane="categoria" class="form-select">
    <ciforeach var="c" itens="$(categorias)">
    <option value="$(c.id)">S(c.nome)</option>
    </ciforeach>
    </select>
    </div>
    <div class="form-group">
    <label for="plataforma">Plataforma(s):</label>
    <ciforeach var="p" items="S(plataformas)”>
    <div class="custom-control custom-checkbox">
    <input type="checkbox" class="custom-control-input" nane="plataformas” value="$(p.id)" id="$(p.id)" />
    <label class="custom-control-label” for="$(p.id)">S(p.nome)</label>
    </div>
    </ciforeach>
    </div>
    <br />
    <a href="/jogo/list" class="btn btn-primary" >Voltar</a>
    <button type="submit" class="btn btn-success”>Salvar</button>
    </form>
    </div>
    </body>
</html>
    