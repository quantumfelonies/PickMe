<!--<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="landing.css">
  <title>Voters Website</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
    }
    
    .landing {
      background-image: url("https://img.freepik.com/free-vector/international-day-democracy_23-2148608691.jpg?w=740&t=st=1687235339~exp=1687235939~hmac=b8939fcd4918cded7eb42e28f0f948496645392bc727a19793f2d4f1dfbcf14d");
      background-size: cover;
      background-position: center;
      height: 100vh;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      text-align: center;
      color: #fff;
    }
    
    .heading {
      font-size: 2.5rem;
      font-weight: bold;
      margin-bottom: 2rem;
      color: #000;
      text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
    }
    
    .btn-started {
      padding: 1rem 2.5rem;
      font-size: 1.5rem;
      background-color: #007bff;
      color: #000;
      border: none;
      border-radius: 0.25rem;
      cursor: pointer;
      text-decoration: none;
      transition: background-color 0.3s ease;
    }
    
    .btn-started:hover {
      background-color: #0056b3;
    }
    @media (max-width: 768px) {
      .landing {
        background-size: contain;
      }
    }
  </style>
</head>

<body>
  <section class="landing">
    <h1 class="heading">WELCOME! YOUR VOTE IS YOUR VOICE!</h1>
    <a href="http://localhost:8080/login2" class="btn btn-started">Get Started</a>
  </section>
</body>

</html>
  -->


<html>
    <head>
		<meta charset="UTF-8">
		<!--<meta name="keywords" content="HTML, CSS">
		<meta name="author" content="QuantumF"> -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>PickMe Voters Website</title>
        <link rel="stylesheet" href="landing.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    </head>

    <body> 
		<div class="banner">
			
				<div class="navbar">
					<div class='logo'>
						<a href="landing.php"><img src="logo.png" class="logo"></a>
					</div>
					
					<nav>
						<ul id='MenuItems'>
							<li><a href="login.php">login</a></li>
						</ul>
					</nav> 
				</div>
			
				<div class="row">
					<div class="column1">
					  <h1>
						Get involved in your school leadership! Your vote is your voice!
					  </h1>
					   <a href="http://localhost:8080/login2" class="button"> 
						   Get started </a>
					</div>
					<div class="column2">
					  <img class="fimage" src="colourvotes.jpg"/>
					</div>
				</div>
				
				<div class="row">
					<div class="column1">
						<img class="thumb" src="thumbsup.jpg"/>
					</div>
			
					<div class="column2">
						<div class="content">
							<div class="txt">
								<h1> For Candidates </h1>
								<p>Are you interested in running for student council? Be the catalyst of change:
                   Sign up for candidacy and shape a better future. Your voice matters, so seize 
                   the opportunity to lead, advocate, and make a lasting impact. </p>
                <a href= register.php class="button"> 
						   Sign up here! </a>
							</div>
						</div>
					</div>
				</div>
					
				
			<div class="footer">
				<div class="ftimg">
					<img src="logo.png" >
				</div>
				<br><br>
				<div class="media">
				  <p class="ftxt">For any enquiries, reach us at</p>
				  <ul class="pages">
					<li class="media"><a href="#" target="_blank" title="twitter"><i class="fa fa-twitter"></i></a></li>
					<li class="media"><a href="#" target="_blank" title="facebook"><i class="fa fa-facebook"></i></a></li>
					<li class="media"><a href="#" target="_blank" title="instagram"><i class="fa fa-instagram"></i></a></li>
					<li class="media"><a href="#" target="_blank" title="pinterest"><i class="fa fa-pinterest"></i></a></li>
				  </ul>
				</div>
			</div>
		</div>



    </body>
</html>
