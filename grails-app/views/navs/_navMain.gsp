<nav class="navbar navbar-default navbar-fixed-top col-md-12"
	role="navigation">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/MarketChase"
				style="font-family: Copperplate Gothic; font-weight: bold;">MarketChase</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse navbar-right">
			<ul class="nav navbar-nav">
				<li><a href="#" data-toggle="modal" data-target="#loginModal">Login</a></li>
				<li><g:link controller="Loja" action="cadastro">Cadastre-se</g:link></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>
<!-- Login -->
<div class="modal fade" id="loginModal">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
				</button>
				<h3 class="modal-title">Login</h3>
			</div>
			<div class="modal-body">
				<form class="form-horizontal">
					<div class="form-group">
						<label for="inputEmail"
							class="col-sm-2 col-sm-offset-1 control-label">Email</label>
						<div class="col-sm-7">
							<input type="email" class="form-control" required="required"
								id="inputEmail" placeholder="Email">
						</div>
					</div>
					<div class="form-group">
						<label for="inputPassword"
							class="col-sm-2 col-sm-offset-1 control-label">Password</label>
						<div class="col-sm-7">
							<input type="password" class="form-control" required="required"
								id="inputPassword" placeholder="Password">
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-8">
							<div class="link pull-right">
								<label><a href="#">Esqueci a senha</a> </label>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">Entrar</button>
								<button type="button" class="btn btn-default"
									data-dismiss="modal" onclick="limpaLogin()">Cancelar</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal/login -->
