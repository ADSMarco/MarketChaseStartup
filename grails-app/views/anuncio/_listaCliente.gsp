<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Insert title here</title>
</head>
<body>
  <div class="body">
  <g:each var="anuncio" in="${anuncios}">
  	${anuncio.descricao}
  	
  	${anuncio.dataInicio.format("dd/MM/yyyy")}
  	
  	${anuncio.dataVencimento.format("dd/MM/yyyy")}
  </g:each>
  </div>
</body>
</html>