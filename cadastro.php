<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar</title>
    <!-- Bootstrap 4 -->
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap/bootstrap.min.css">
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<!-- GoogleFonts - OpenSans -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="col-md-12 col-md-offset-6">
            <h1>Cadastro de Cliente Bancário</h1>
            <form class="log" method="POST" action="#">
                    <input type="text" class="form-control field" id="cliente" name="cliente" aria-describedby="cliente" placeholder="Insira seu Nome Completo" required="required"><br>
                    <input type="text" class="form-control field" id="cpf" name="cpf" aria-describedby="cpf" placeholder="Insira seu CPF" required="required"><br>
                    <input type="date" class="form-control field" id="nasc" name="data_nascimento" aria-describedby="nasc" required="required"><br>
                    <input type="text" class="form-control field" id="end" name="endereco" aria-describedby="end" placeholder="Insira seu Logradouro, seguido do número da residência e Completo (se houver)" required="required"><br>
                    <select type="text" class="form-control field" id="sex" name="sexo" aria-describedby="sex" required="required" style="width: 90%; display: block; margin: auto;">
                        <option selected >Sexo...</option>
                        <option>Feminino</option>
                        <option>Masculino</option>
                        <option>Outro/Prefiro não responder</option>
                    </select><br>
                        <input type="email" class="form-control field" id="mail" name="email" aria-describedby="mail" placeholder="Insira seu e-mail principal" required="required"><br>
                        <button type="submit" name="cadastrar" class="btn btn-default">Cadastrar</button>
                </div>           
            </form>
        </div>        
    </div>    
</body>
</html>