<?php 
    function select_appetizers() {
        require 'database.php';
        global $db;

        $query = 
        'SELECT
            *
        FROM appetizers';
        
        $statement = $db->prepare($query);
        $statement->execute();
        $appetizers = $statement->fetchAll();
        $statement->closeCursor();

        return $appetizers;
    }
    
?>