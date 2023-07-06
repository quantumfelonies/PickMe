<?php  include("adminloginprocess.php"); ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Dashboard.home</title>
  <link rel="stylesheet" href="adminhome.css" />
  <!-- Font Awesome Cdn Link -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
</head>
<body>
  <header class="header">
    <div class="title">
      <span>Dashboard</span>
    </div>
    <div class="header-icons">
      <div class="account">
      <h4><?php  echo $_SESSION['admin_email']; ?></h4>
      </div>
    </div>
  </header>

  <div class="container">
    <nav>
      <div class="side_navbar">
        <a class="active" href="#">Home</a>
        <a href="add_election.php">Add New Election</a>
        <a href="view_applications.php">Applying Candidates</a>
        <a href="election_candidates.php">View Candidates</a>
        <a href="view_voters.php">Registered Voters</a>
        <a href="final_results.php">Election Results</a>

        <a class="log-out-button" href="admin-login.php">Log out</a>
      </div>
    </nav>

    <div class="main-body">
     <h2>Home</h2>
      <div class="promo_card"> 
       <h1>Welcome Admin</h1>
          <p>Click an option on the sidebar to get started</p>
      </div>
    </div>
  </div>

</body>
</html>
