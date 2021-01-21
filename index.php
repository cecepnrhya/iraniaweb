<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <!-- Bootstrap CSS -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <style type="text/css">
      @import url(Home.css);
      
  </style>
    <title>SMK BHAKTI ANINDYA</title>
  </head>
  <body >


     <!--navigation bar-->
    <nav class="navbar shadow-sm p-2 mb-2 bg-white navbar-expand-lg navbar-light fixed-top" style="position: relative;">
      <div class="container ">
            <a class="navbar-brand" href="#"><img class="img-fluid img-page2" src="gambar/Group 17.png ">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ml-auto">
              <a class="nav-link" href="home.php">Home <span class="sr-only">(current)</span></a>
              <a class="nav-link" href="index.php">Jobs</a>
              <a class="nav-link" href="#">About</a>
              <a class="nav-link" href="#">Career Blog</a>
              <a class="nav-link" href="#">Contact Us</a>
            </div>
        </div>
      </div>
    </nav>

    <?php 
		    $s_jurusan="";
        $s_keyword="";
        if (isset($_POST['search'])) {
            $s_jurusan = $_POST['s_jurusan'];
            $s_keyword = $_POST['s_keyword'];
        }
  	?>


    
 
     <!--section1-->
     <div class="jumbotron main_page">
        <div class="title_page">
          
            <h1>Find Your Dream Job in BKK Bhakti anindya!</h1>
            <p>A great place for better success</p>
         </div>
         
         <div class="search_job">
            <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                <option selected >Role</option>
                <?php while($data = mysqli_fetch_assoc($result) ){?>
                <option value="<?php echo $data['role']; ?>"><?php echo $data['role']; ?></option>
                <?php } ?>
              </select>
              <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                <option selected hidden>type</option>
                <?php while($data = mysqli_fetch_assoc($result) ){?>
                <option value="<?php echo $data['type']; ?>"><?php echo $data['type']; ?></option>
                <?php } ?>
              </select>
              <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                <option selected hidden>city</option>
                <?php while($data = mysqli_fetch_assoc($result) ){?>
                <option value="<?php echo $data['city']; ?>"><?php echo $data['city']; ?></option>
                <?php } ?>
              </select>
              <button type="button" class="btn-light shadow" >Search</button>

              

        </div>

        

          <div class="card_jobslist">
            <div class="row">
              <div class="column">
                <div class="card shadow-lg p-3 mb-5 bg-white">
                  <br>
                  <h5>Motion Graphic</h5>
                  <p>Entry-level After Effects, Photoshop,<br> Illustrator skills necessary</p>
                  <button type="button" class="btn btn-sm">Register</button>
                </div>
              </div>
              <div class="column">
                <div class="card shadow-lg p-3 mb-5 bg-white">
                  <br>
                  <h5>Digital Marketing</h5>
                  <p>Identify the right audience and media placements </p>
                  <button type="button" class="btn btn-sm">Register</button>
                </div>
              </div>
              <div class="column">
                <div class="card shadow-lg p-3 mb-5 bg-white">
                  <br>
                  <h5>Accounting</h5>
                  <p>Monitoring outstanding advances and follow up </p>
                  <button type="button" class="btn btn-sm">Register</button>
                </div>
              </div>
              <div class="column">
                <div class="card shadow-lg p-3 mb-5 bg-white">
                  <br>
                  <h5>Graphic Design</h5>
                  <p>Always up to date with design trends<br> in our outside industries and think creative</p>
                  <button type="button" class="btn btn-sm">Register</button>
                </div>
              </div>
              <div class="column">
                <div class="card shadow-lg p-3 mb-5 bg-white">
                  <br>
                  <h5>Admin HR</h5>
                  <P>Preparing and amending where necessary <br>HR documents,employment contracts </P>
                  <button type="button" class="btn btn-sm">Register</button>
                </div>
              </div>
              <div class="column">
                <div class="card shadow-lg p-3 mb-5 bg-white">
                  <br>
                  <h5>Network Engineer</h5>
                  <p>Deep knowledge in network routing <br> switching and security.</p>
                  <button type="button" class="btn btn-sm">Register</button>
                </div>
              </div>
              <div class="column">
                <div class="card shadow-lg p-3 mb-5 bg-white">
                  <br>
                  <h5>Junior Network Engineer</h5>
                  <p>Fulltime<i class="bi bi-geo-alt-fill"></i></p>
                  <button type="button" class="btn btn-sm">Register</button>
                </div>
              </div>
              <div class="column">
                <div class="card shadow-lg p-3 mb-5 bg-white">
                  <br>
                  <h5>Infrastructure Engineer</h5>
                  <p>Support and maintaining Dev, SIT, <br>UAT and Performance </p>
                  <button type="button" class="btn btn-sm">Register</button>
                </div>
              </div>
            </div>
          </div>

    </div>
     

      <!--footer-->
      <footer class="footer mt-auto py-3 ">
        <div class="container">
          <p>SMK BHKATI ANINDYA</p>
        </div>
      </footer>
     <!--akhir footer-->


    
    
       
          
       


       
     
             
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    -->

</body>
</html>