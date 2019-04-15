<?php 
    function select_entrees() {
        require 'database.php';
        global $db;

        $query = 
        'SELECT
            *
        FROM entrees';
        
        $statement = $db->prepare($query);
        $statement->execute();
        $entrees = $statement->fetchAll();
        $statement->closeCursor();

        return $entrees;
    }
    
?>