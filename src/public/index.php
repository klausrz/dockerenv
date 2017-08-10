<?php
$link = mysql_connect('db', 'demoUser', 'demoPass');
if (!$link) {
    die('Could not connect: ' . mysql_error());
}
echo 'Connected successfully';
mysql_close($link);
