
<!doctype html>
<html lang="en">
  <head>
    <title>Formulário de pagamento</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/checkout-rtl/">


<link href="https://getbootstrap.com/docs/5.2/dist/css/bootstrap.rtl.min.css" rel="stylesheet" integrity="sha384-dc2NSrAXbAkjrdm9IYrX10fQq9SDG6Vjz7nQVKdKcJl3pC+k37e7qJR5MVSCS+wR" crossorigin="anonymous">

    <!-- Favicons -->
<link rel="apple-touch-icon" href="https://kvcmining.com.br/wp-content/uploads/2021/03/PECAS-ESTRATEGICAS-BRANCO.png" sizes="180x180">
<link rel="icon" href="https://kvcmining.com.br/wp-content/uploads/2021/03/PECAS-ESTRATEGICAS-BRANCO.png" sizes="32x32" type="image/png">
<link rel="icon" href="https://kvcmining.com.br/wp-content/uploads/2021/03/PECAS-ESTRATEGICAS-BRANCO.png" sizes="16x16" type="image/png">
<link rel="manifest" href="https://kvcmining.com.br/wp-content/uploads/2021/03/PECAS-ESTRATEGICAS-BRANCO.png">
<link rel="mask-icon" href="https://kvcmining.com.br/wp-content/uploads/2021/03/PECAS-ESTRATEGICAS-BRANCO.png" color="#712cf9">
<link rel="icon" href="https://kvcmining.com.br/wp-content/uploads/2021/03/PECAS-ESTRATEGICAS-BRANCO.png">
<meta name="theme-color" content="#712cf9">


    <!-- Custom styles for this template -->
    <link href="../checkout/form-validation.css" rel="stylesheet">
  </head>
  <body class="bg-light">
    
<div class="container">
  <main>
    <div class="py-5 text-center">
	<!-- Ícone principal 
       <img class="d-block mx-auto mb-4" src="https://getbootstrap.com/docs/5.2/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57"> -->
      <h2>Formulário de pagamento</h2>
      <p class="lead">Insira as informações para prosseguir com a compra.</p>
    </div>

    <div class="row g-3">
      <div class="col-md-5 col-lg-4 order-md-last">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-muted">carrinho de compras</span>
          <span class="badge bg-secondary rounded-pill">3</span>
        </h4>
        <ul class="list-group mb-3">
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">Nome do Produto</h6>
              <small class="text-muted">Pequena descrição</small>
            </div>
            <span class="text-muted">$12</span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">segundo produto</h6>
              <small class="text-muted">Pequena descrição</small>
            </div>
            <span class="text-muted">$8</span>
          </li>
          <li class="list-group-item d-flex justify-content-between lh-sm">
            <div>
              <h6 class="my-0">terceiro produto</h6>
              <small class="text-muted">Pequena descrição</small>
            </div>
            <span class="text-muted">$5</span>
          </li>
          <li class="list-group-item d-flex justify-content-between bg-light">
            <div class="text-success">
              <h6 class="my-0">Código promocional</h6>
              <small>EXAMPLECODE</small>
            </div>
            <span class="text-success">-$5</span>
          </li>
          <li class="list-group-item d-flex justify-content-between">
            <span>Moeda (USD)</span>
            <strong>$20</strong>
          </li>
        </ul>

        <form class="card p-2">
          <div class="input-group">
            <input type="text" class="form-control" placeholder="Código promocional">
            <button type="submit" class="btn btn-secondary">verificação</button>
          </div>
        </form>
      </div>
      <div class="col-md-7 col-lg-8">
        <h4 class="mb-3">Endereço de cobrança</h4>
        <form class="needs-validation" novalidate>
          <div class="row g-3">
            <div class="col-sm-6">
              <label for="firstName" class="form-label">Primeiro nome</label>
              <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
              <div class="invalid-feedback"> 
			  Por favor, entre com um primeiro nome válido.
              </div>
            </div>

            <div class="col-sm-6">
              <label for="lastName" class="form-label">Sobrenome</label>
              <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
              <div class="invalid-feedback">
                Insira um sobrenome válido.
              </div>
            </div>

            <div class="col-12">
              <label for="username" class="form-label">Nome de usuário</label>
              <div class="input-group has-validation">
                <span class="input-group-text">@</span>
                <input type="text" class="form-control" id="username" placeholder="nome de usuário" required>
              <div class="invalid-feedback">
                Seu nome de usuário é obrigatório.
                </div>
              </div>
            </div>

            <div class="col-12">
              <label for="email" class="form-label">E-mail <span class="text-muted">(minha escolha)</span></label>
              <input type="email" class="form-control" id="email" placeholder="you@example.com">
              <div class="invalid-feedback">
                Insira um endereço de e-mail válido para receber atualizações de envio.
              </div>
            </div>

            <div class="col-12">
              <label for="address" class="form-label">Endereço</label>
              <input type="text" class="form-control" id="address" placeholder="1234 Rua 1" required>
              <div class="invalid-feedback">
                Por favor insira seu endereço de entrega.
              </div>
            </div>

            <div class="col-12">
              <label for="address2" class="form-label">Título 2 <span class="text-muted">(minha escolha)</span></label>
              <input type="text" class="form-control" id="address2" placeholder="Apartamento 24">
            </div>

            <div class="col-md-5">
              <label for="country" class="form-label">País</label>
              <select class="form-select" id="country" required>
                <option value="">Escolher...</option>
				<option>Angola</option>
				<option>Brasil</option>
                <option>Estados Unidos da América</option>
				<option>Cabo Verde</option>
				<option>China</option>
				<option>Equador</option>
				<option>França</option>
				<option>Ilhas Heard e McDonald</option>
				<option>Japãp</option>
				<option>Kosovo</option>
				<option>Maldivas</option>
              </select>
              <div class="invalid-feedback">
                Por favor, escolha um país válido.
              </div>
            </div>

            <div class="col-md-4">
              <label for="state" class="form-label">Região</label>
              <select class="form-select" id="state" required>
                <option value="">Escolher...</option>
                <option>Califórnia</option>
				<option>Paiçandu</option>
				<option>Maringá</option>
				<option>Sarandi</option>
				<option>Maranhão</option>
				<option>Catupiri</option>
				<option>Bahia</option>
				<option>Amapá</option>
				<option>Acre</option>
				<option>São josé dos pinhais</option>
				<option>Araucária</option>
				
              </select>
              <div class="invalid-feedback">
                Escolha um nome de área válido.
              </div>
            </div>

            <div class="col-md-3">
              <label for="zip" class="form-label">Código postal</label>
              <input type="text" class="form-control" id="zip" placeholder="" required>
              <div class="invalid-feedback">
                CEP obrigatório.
              </div>
            </div>
          </div>

          <hr class="my-4">

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="same-address">
            <label class="form-check-label" for="same-address">O endereço de entrega é o mesmo que meu endereço de cobrança</label>
          </div>

          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="save-info">
            <label class="form-check-label" for="save-info">Salve esta informação para a próxima vez</label>
          </div>

          <hr class="my-4">

          <h4 class="mb-3">Forma de pagamento</h4>

          <div class="my-3">
            <div class="form-check">
              <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked required>
              <label class="form-check-label" for="credit">Cartão de crédito</label>
            </div>
            <div class="form-check">
              <input id="cash" name="paymentMethod" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="cash">Dinheiro</label>
            </div>
            <div class="form-check">
              <input id="paypal" name="paymentMethod" type="radio" class="form-check-input" required>
              <label class="form-check-label" for="paypal">PayPal</label>
            </div>
          </div>

          <div class="row gy-3">
            <div class="col-md-6">
              <label for="cc-name" class="form-label">O nome no cartão</label>
              <input type="text" class="form-control" id="cc-name" placeholder="" required>
              <small class="text-muted">Nome completo conforme exibido no cartão</small>
              <div class="invalid-feedback">
                O nome no cartão é obrigatório
              </div>
            </div>

            <div class="col-md-6">
              <label for="cc-number" class="form-label">número do cartão
</label>
              <input type="text" class="form-control" id="cc-number" placeholder="" required>
              <div class="invalid-feedback">
                Número do cartão de crédito obrigatório
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-expiration" class="form-label">Data de validade</label>
              <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
              <div class="invalid-feedback">
                Data de expiração obrigatória
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-cvv" class="form-label">Código de segurança (CVV)</label>
              <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
              <div class="invalid-feedback">
                Código de segurança obrigatório
              </div>
            </div>
          </div>

          <hr class="my-4">

          <button class="w-100 btn btn-primary btn-lg" type="submit">Continue Pagando</button>
        </form>
      </div>
    </div>
  </main>
  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2022-2017 IParts</p>
    <ul class="list-inline">
      <li class="list-inline-item"><a href="#">política de Privacidade</a></li>
      <li class="list-inline-item"><a href="#">Contrato de uso</a></li>
      <li class="list-inline-item"><a href="#">Suporte técnico</a></li>
    </ul>
  </footer>
</div>

	<!-- Ícone principal -->
    <script src="https://getbootstrap.com/docs/5.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

      <script src="../checkout/form-validation.js"></script>
  </body>
</html>
