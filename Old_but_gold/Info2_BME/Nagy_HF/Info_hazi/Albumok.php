<!DOCTYPE html>
<html lang="en">
    <head>
        <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
        <meta charset="utf-8" />
        <title>Albumok</title>
    </head>
    <body>
        <a href="Index.html"><h1>Zenetár</h1></a>
        <a href="Zeneszámok.php">Dalok listája</a>
        <a href="Albumok.php">Albumok</a>
        <h2>Albumok</h2>
        <form>
            Album neve:<input type="text" name="keresett">
            <input type="submit" name="Send" value="Keresés">
        </form>
        <?php
            if(isset($_REQUEST["Send"])){
                $keresett=mysql_real_escape_string($_REQUEST["keresett"]);
                mysql_connect("localhost", "root", "") or die("Kapcsolódási hiba: ".mysql_error());
                mysql_select_db("zenetar");
                $eredmeny=mysql_query("Select* from album where Title like'%$keresett%'");

                print("<table border='1'>");
                printf("<tr><td>Album címe</td><td>Előadó</td><td>Megjelenés éve</td><td>Műfaj</td><td>Ennyi ismert dalt tartalmaz</td><td>Dalok összhossza</td></tr>");
                while($row=mysql_fetch_array($eredmeny)){
                    printf("<tr><td>%s</td>", $row["Title"]);

                    $Artists=$row["Artist"];
                    $temp1=mysql_query("SELECT Artist FROM artists WHERE id=$Artists");
                    while($row1=mysql_fetch_array($temp1)){
                        printf("<td>%s</td>", $row1["Artist"]);
                    }

                    printf("<td>%s</td>", $row["PublishingTime"]);

                    $Genres=$row["Genre"];
                    $temp1=mysql_query("SELECT Genre FROM genres WHERE id=$Genres");
                    while($row1=mysql_fetch_array($temp1)){
                        printf("<td>%s</td>", $row1["Genre"]);
                    }

                    $Ids=$row["Id"];
                    $temp1=mysql_query("SELECT* FROM tracklist WHERE AlbumId=$Ids");    //ezt azért így mert valamiért nem bírtam működésre bírni a count() fgv-t
                    $i=0;
                    while($row1=mysql_fetch_array($temp1)){
                        $i+=1;
                    }
                    printf("<td>%s</td>", $i);

                    $length=0;
                    $temp1=mysql_query("SELECT TrackId FROM tracklist WHERE AlbumId=$Ids");
                    while($row1=mysql_fetch_array($temp1)){
                        $Id2=$row1["TrackId"];
                        $temp2=mysql_query("SELECT Length FROM track WHERE Id=$Id2");
                        while($row2=mysql_fetch_array($temp2)){
                            $length+=$row2["Length"];
                        }
                    }
                    printf("<td>%s</td>", $length);
                    print("</tr>");
                }
                print("</table>");
                mysql_close();
            }
        ?>
    </body>
</html>
