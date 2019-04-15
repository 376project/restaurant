<?php 
    function select_drinks() {
        require 'database.php';
        global $db;

        $query = 
        'SELECT
            *
        FROM drinks';
        
        $statement = $db->prepare($query);
        $statement->execute();
        $drinks = $statement->fetchAll();
        $statement->closeCursor();

        return $drinks;
    }
    
?>