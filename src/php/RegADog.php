<?php

const non_web_php = '/home/bryany/php/';

require_once(non_web_php . "MushDB.php");

// define variables and set to empty values
$bibnumber = $age = 0;
$dogname = "";
$dogbirthday = "";

$numberError = FALSE;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  //$bibnumber = test_number($_POST["bibNumber"]);
  $dogname = test_input($_POST["dogName"]);
  if (empty($dogname)) {
    die ($dogname . " is not a valid name.");
  }

  $dogbirthday = test_input($_POST["dogDOB"]);
  if (empty($dogbirthday)) {
    die ($dogbirthday . " is not a valid birth date.");
  }

  //$dogowner = test_input($_POST["dogOwner"]);

  $execSql = "CALL NewDog ('{$dogname}', '{$dogbirthday}')";
  echo "sql to execute: " . $execSql . "<BR>";

  try {
    MushDB::connect()->exec($execSql);
  }
  catch(PDOException $e) {
    die ( "The database returned an error while registering a dog. The details are: " . $e->getMessage());
  }
}

echo $dogname . " is sucessfully registered.<br>";
?>