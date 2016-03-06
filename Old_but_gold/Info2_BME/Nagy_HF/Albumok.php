<!DOCTYPE html>
<html lang="en">
    <head>
        <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
        <meta charset="utf-8" />
        <title>Albumok</title>
    </head>
    <body>
        <?php
            mysql_connect("localhost","root","") or die("Kapcsolódási hiba: ".mysql_error());
            mysql_select_db("hazi");
            echo "<table border='1'> <tr> <td>Cím</td><td>Előadó</td><td>Műfaj</td><td>Kiadás éve</td><td>Mejegyzés</td> </tr>"
            $album=mysql_query("SELECT * FROM album");
            if($album)
            while($row=mysql_fetch_array($album))
            {
                sprintf("<tr><td>%s</td><td>%s</td><td>%s</td><td>%s</td><td>%s</td></tr>",$row['Title'],$row['Artist'],$row['Genre'],$row['PublishingTime'],$row['Remark'])
            }
            echo "</table>"
        ?>
    </body>
</html>
