<!DOCTYPE html>
<?php
    mysql_connect("localhost", "root", "") or die("Kapcsolódási hiba: ".mysql_error());
    mysql_select_db("zenetar");
    $Id=mysql_real_escape_string($_GET["Id"]);

    if(isset($_GET["Save"])){
                $newTitle=mysql_real_escape_string($_GET["newTitle"]);
                $newLength=mysql_real_escape_string($_GET["newLength"]);
                $newAbout=mysql_real_escape_string($_GET["newAbout"]);
                $newNavigation=mysql_real_escape_string($_GET["newNavigation"]);
                mysql_query("UPDATE track SET Title='$newTitle', Length='$newLength', About='$newAbout', Navigation='$newNavigation' WHERE Id=$Id");
                header("Location: /Zeneszámok.php");
           }
?>
<html lang="en">
    <head>
        <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
        <meta charset="utf-8" />
        <title>Részletező oldal</title>
    </head>
    <body>
        <a href="Index.html"><h1>Zenetár</h1></a>
        <a href="Zeneszámok.php">Dalok listája</a>
        <a href="Albumok.php">Albumok</a>
        <h2>Részletes adatok</h2>
        <?php
           //mysql_connect("localhost", "root", "") or die("Kapcsolódási hiba: ".mysql_error());
           //mysql_select_db("zenetar");
           //$Id=mysql_real_escape_string($_GET["Id"]);
           $eredmeny=mysql_query("SELECT* FROM track WHERE Id='$Id'");
           if(!isset($_REQUEST["Send"])){
               print("<table border='1'>");
               print("<tr><td>Dal Címe</td><td>Hossza</td><td>Megjegyzés vele kapcsolatban</td><td>Elérési útvonal</td></tr>");
               while($row=mysql_fetch_array($eredmeny)){
                   printf("<tr><td>%s</td><td>%s</td><td>%s</td><td>%s</td></tr>", $row["Title"], $row["Length"], $row["About"], $row["Navigation"]);
               }
               print("</table>");
               print("<form>");
               print("<input type='submit' title='A fenti adatok módosításához' name='Send' value='Módosítás' class='Dalbutton'>");
               printf("<input type='hidden' name='Id' value='%s'>", $Id);
               print("</form>");
           }
           else{
               while($row=mysql_fetch_array($eredmeny)){
                   print("<fieldset>");
                   print("<legend>Új adatok:</legend>");
                   print("<form method='GET'>");
                   printf("Dal címe: <input type='text' name='newTitle' value='%s'>", $row["Title"]);
                   printf("<br />Hossza: <input type='text' name='newLength' value='%s'>", $row["Length"]);
                   printf("<br />Megjegyzés: <input type='text' name='newAbout' value='%s'>", $row["About"]);
                   printf("<br />Új elérési útvonal: <input type='text' name='newNavigation' value='%s'>", $row["Navigation"]);
                   print("<input type='submit' name='Save' value='Mentés'>");
                   printf("<input type='hidden' name='Id' value='%s'>", $Id);
                   print("</form>");
                   print("</fieldset>");
                }
           }
           
        ?>
    </body>
</html>
