<!DOCTYPE <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Restaurant</title>
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<main>
    <nav>
    <div class="container" style="margin-top:200px;padding:20px;background-color:#dae4f2">
        <form action=<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?> method="post">
            <div class="form-group">
                <label for="email">Email address:</label>
                <input type="email" class="form-control" id="email">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password">
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    </nav>
</main>
</body>
</html>
<?php if(isset($_POST['email'], $_POST['password'])): ?>
    <?php 
            try {
                require __DIR__ . "/../controller/database.php";
                require __DIR__ . "/../controller/users_db.php";

                echo "<h3>Login Page</h3>";
            
                if (!filter_input(INPUT_POST, $_POST['email'], FILTER_VALIDATE_EMAIL)) {
                    echo "<h3>Email is not valid</h3>";
                } else {
                    echo "<h3>Email is valid</h3>";
                    $email = $_POST['email'];
                    $password = $_POST['password'];

                    if(validate_login($email, $pasword)) {
                        echo "<h3>Email and Password is correct</h3>";
                        header('Location: http://localhost/restaurant/376FinalProject/restaurant_menu/menu/index.php');
                    }
                    else {
                        echo"<h3>Email or Password is not valid</h3>";
                    }
                }
            }
            catch (Exception $e) {
                echo 'Caught exception: ',  $e->getMessage(), "\n";
            }

    ?>
<?php endif ?>