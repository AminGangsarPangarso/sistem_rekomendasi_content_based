<?php

$mysql = new Mysqli("localhost","root","","cb");
$id = $_GET["id"];
$ambil = $mysql->query("SELECT * FROM dataset WHERE 
                    id='$id'");
$paper = $ambil->fetch_assoc();


$rekomendasi = array();

$abstrak_ini = $paper['abstrak'];

$paperlain = array();
$pungut = $mysql->query("SELECT * FROM dataset WHERE id !='$id'");
while($tiap = $pungut->fetch_assoc())
{
  $abstrak_itu = $tiap['abstrak'];
  //bersihkan abstrak
  $abstrak_itu = preg_replace('/[^A-Za-z]/', " ", $abstrak_itu);
  $abstrak_itu = strtolower($abstrak_itu);

  $abstrak_ini = preg_replace('/[^A-Za-z]/', " ", $abstrak_ini);
  $abstrak_ini = strtolower($abstrak_ini);


  //hitung kemiripan abstrak ini dan itu
  similar_text($abstrak_ini, $abstrak_itu, $prosentase);
  $tiap['prosentase'] = $prosentase;

  $paperlain[] = $tiap;
}

// echo "<pre>";
// print_r($paperlain);
// echo "</pre>";

usort($paperlain, function($a, $b) {
    return $b['prosentase'] <=> $a['prosentase'];
});

// echo "<pre>";
// print_r($paperlain);
// echo "</pre>";

?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  </head>
  <body>


  	<div class="container">
      <div class="row">
        <div class="col-md-6">
  		    <h1><?php echo $paper["judul"] ?></h1>
          <?php echo $paper['abstrak'] ?>
        </div>
        <div class="col-md-6">
          <h5>rekomendasi paper</h5>
          <ul>
            <?php foreach ($paperlain as $key => $p): ?>
              <li>
                <a href="detail.php?id=<?php echo $p['id'] ?>">
                  <?php echo $p['judul'] ?>
                </a>
              </li>
            <?php endforeach ?>
          </ul>
        </div>
      </div>
  		
  	</div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>