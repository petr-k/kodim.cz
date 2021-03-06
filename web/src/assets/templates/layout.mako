<%def name="pageIntro(display='2')">
  <div class="jumbotron jumbotron-fluid">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-auto text-center">
          ${caller.logo()}
        </div>
        <div class="col-md-8 text-center">
          <h1 class="display-${display}">${caller.title()}</h1>
          <p class="lead">
            ${caller.lead()}
          </p>
        </div>
      </div>
    </div>
  </div>
</%def>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <link href="https://fonts.googleapis.com/css?family=Raleway:500,800,900|Ubuntu+Mono:400,700&amp;subset=latin-ext" rel="stylesheet" />
  <link rel="stylesheet" href="/index.css" />
  <link 
    id="favicon" 
    rel="shortcut icon" 
    href="/img/icons/notebook16.png" 
    sizes="16x16"
    type="image/png"
  />
  <link 
    id="favicon" 
    rel="shortcut icon" 
    href="/img/icons/notebook24.png" 
    sizes="24x24"
    type="image/png"
  />
  <link 
    id="favicon" 
    rel="shortcut icon" 
    href="/img/icons/notebook32.png" 
    sizes="32x32"
    type="image/png"
  />
  <link 
    id="favicon" 
    rel="shortcut icon" 
    href="/img/icons/notebook48.png" 
    sizes="48x48"
    type="image/png"
  />
  <link
    rel="icon"
    href="/img/icons/notebook256.png"
    sizes="256x256"
    type="image/png"
  />

  <title>Kódím.cz</title>
</head>
<body>
  <header>
    <%block name="header" />
  </header>
  <main>
    <%block name="main" />
  </main>
  <footer>
    
  </footer>
  
  <script
    src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
  ></script>
  <script
    src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
  ></script>
  <script 
    src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" 
  ></script>
</body>
</html>