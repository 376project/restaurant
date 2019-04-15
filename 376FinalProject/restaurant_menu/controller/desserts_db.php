<?php 
    function select_desserts() {
        require 'database.php';
        global $db;

        $query = 
        'SELECT
            *
        FROM desserts';
        
        $statement = $db->prepare($query);
        $statement->execute();
        $desserts = $statement->fetchAll();
        $statement->closeCursor();

        return $desserts;
    }
    
?>