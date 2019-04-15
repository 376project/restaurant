<?php 
    function select_sides() {
        require 'database.php';
        global $db;

        $query = 
        'SELECT
            *
        FROM sides';
        
        $statement = $db->prepare($query);
        $statement->execute();
        $sides = $statement->fetchAll();
        $statement->closeCursor();

        return $sides;
    }
    
?>