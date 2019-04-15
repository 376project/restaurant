<?php 
    function validate_login($email, $password) {
        require 'menu_database.php';
        global $db;

        $query = 
        'SELECT 
            password
        FROM users 
        WHERE email = :email';
        $statement = $db->prepare($query);
        $statement->bindValue(':email', $email);
        $statement->execute();
        $fetched_password = $statement->fetch();
        $statement->closeCursor();

        if($password == $fetched_password) {
            return true;
        }
        else {
            return false;
        }
    }
    
?>