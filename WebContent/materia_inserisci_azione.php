<?php
//stabilisco la connessione con il server
require "lib/connessione.php";

//comando sql per l’inserimento dei dati all’interno della tabella materia
$sql = "INSERT INTO `materia`(`Nome`) VALUES ('{$_POST['materia']}')";

//stampo su video il risultato dell’operazione
if(mysqli_query($connessione, $sql)){
     echo '<script language="javascript">';
        echo 'alert("I dati sono stati inseriti");';
        echo 'window.location.href = "/nicola/Questionario/materia_inserisci_form.php";';
        echo '</script>';
    } else {
     echo '<script language="javascript">';
        echo 'alert("I dati non sono stati inseriti" + mysqli_error($conn));';
        echo 'window.location.href = "/nicola/Questionario/materia_inserisci_form.php";';
        echo '</script>';
}

//chiudo la connessione
mysqli_close($connessione);
?>

