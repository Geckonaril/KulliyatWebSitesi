<html>
    <head>
        <title>Külliyat</title>
        <meta charset="UTF-8">
        <link href="css/style1.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Irish+Grover&display=swap" rel="stylesheet">
        <link rel="shortcut icon" type="image/png" href="img/külliyatfotorenksizt.png">

    </head>
        <style>
            body{
                background-color: #1b3818;}
            .custom-text { 
                position: absolute; top: -50px;  left: 550px;  }
                  
        </style>
    <body style="height: 90%;">
        <a href="sayfa2.html" style="border: 0;"> <p class="custom-text" style="color: rgba(0, 255, 102, 0.621); font-family: 'Monaco'; font-size: 70px;"><h3>Hayvan Külliyatı</h3></a></p><a href="https://avesis.ankara.edu.tr/ebagci" style="border: 0;"><h1 style="margin-left: 1450px;">Enver Bağcı</h1></a><a href="yazdıryor.php" style="border: 0;"> <img height="48px" style="margin-left: 1370px;margin-top:-50px;" src="img/messages.png" alt="bos"></a><a href="sayfa2.html" style="border: 0;"> <img height="48px" style="margin-left: 1600px;margin-top:-50px;" src="img/külliyatfotorenksizt.png" alt="bos"></a>
        <p style="margin-top:10px; color: rgba(0, 255, 102, 0.621); font-family: 'Monaco'; font-size: 40px;">&nbsp;&nbsp;<h1>Külliyat'a Yazdıklarınız!</h1></p>
        <p style="margin-top:50px; width:500px; font-size:24px;color: rgb(250, 252, 140); font-family: 'Monaco';">
            
        <?php
$con = mysqli_connect("localhost","root","","monke");
if(mysqli_connect_errno()){
    echo "Failed to coonnect to MySql: " . mysqli_connect_error();
 }
else{
$sorgu = mysqli_query($con,"SELECT * FROM form");
while($str = mysqli_fetch_assoc($sorgu))
{

print $str['id'];
print "<br>";
print $str['name'];
print "<br>";
print $str['surname'];
print "<br>";
print $str['mail'];
print "<br>";
print $str['yor'];
print "<br>";
print "<br>";
}
}
?>
            
        </p>
            
    




           
    </body>

</html>
