<!DOCTYPE html>
<html lang="en">
    <head>
        <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
        <meta charset="utf-8" />
        <title>Zeneszámok</title>
    </head>
    <body>
        <a href="Index.html"><h1>Zenetár</h1></a>
        <a href="Zeneszámok.php">Dalok listája</a>
        <a href="Albumok.php">Albumok</a>
        <h2>Dalok listája</h2>
        <?php
            mysql_connect("localhost","root","") or die("Kapcsolódási hiba: ".mysql_error());
            mysql_select_db("zenetar");
            $results=mysql_query("SELECT* FROM track");
            print("<table border='1'>");
            print("<thead><tr><td>Dal Címe</td><td>Hossza(s)</td><td>Megjegyzés</td><td>Elérési Útvonal</td></tr></thead>");
            while($row=mysql_fetch_array($results)){
                print("<tr>");
                printf("<td><a href='Részletező_oldal.php?Id=%s' title='Mutasd az adatait!'>%s</a></td>", $row["Id"], $row["Title"]);
                printf("<td>%s</td><td>%s</td><td>%s</td></tr>", $row["Length"], $row["About"], $row["Navigation"]);
            }
            print("</table>");
            mysql_close();
        ?>
    </body>
</html>


