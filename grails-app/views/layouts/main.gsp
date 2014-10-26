<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="pt-br" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="Grails" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<r:require module="bootstrap" />
<link rel="shortcut icon"
	href="${resource(dir: 'images', file: 'icone1.png')}"
	type="image/x-icon">
<g:layoutHead />

<g:javascript library="application" />
<r:layoutResources />
</head>
<body>

	<div class="container-fluid">
		<div class="jumbotron" style="background-color: #eb963b;">
			<div class="row">
				<div class="col-md-4">
					<img class="img-responsive"
						src="${resource(dir: 'images', file: 'logo.png')}"
						alt="MarketChase" style="margin: 30px auto 0px auto;" />
				</div>
				<div class="col-md-8">
					<h1
						style="margin-top: 10%; font-family: Copperplate Gothic; font-weight: bolder;"
						class="text-center">Atinja seu alvo</h1>
				</div>
			</div>
		</div>
		<g:layoutBody />
		<r:layoutResources />
		<div class="container-fluid">
			<footer class="panel-footer panel panel">
				<h4 class="text-center">footer</h4>
			</footer>
		</div>
	</div>
</body>
</html>
