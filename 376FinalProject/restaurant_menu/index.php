<!-- <?php include 'view/header.php'; ?> -->

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
    <div class="container">
    <!-- <img src='https://prodimages.restaurants-sign.com/350/n515079-food-and-drink-restaurant-logo-neon-sign.jpg' /> -->
        <form action="/menu/index.php">
            <div class="form-group">
                <label for="email">Email address:</label>
                <input type="email" class="form-control" id="email">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" class="form-control" id="password">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
        </form>
    </div>
    </nav>
</main>
</body>
</html>
<?php if(isset($_POST['email'], $_POST['password'])): ?>
    <?php 
            try {
                require __DIR__ . "/../model/database.php";
                require __DIR__ . "/../model/users_db.php";
            
                if (!filter_input(INPUT_POST, $_POST['email'], FILTER_VALIDATE_EMAIL)) {
                    echo("Email is not valid");
                } else {
                    echo("Email is valid");
                    $email = $_POST['email'];
                    $password = $_POST['password'];

                    if(validate_login($email, $pasword)) {
                        //header('Location: http://localhost/restaurant/376FinalProject/restaurant_menu/menu/index.php');
                        echo("Email and Password is correct");
                    }
                    else {
                        echo("Email or Password is not valid");
                    }
                }
            }
            catch (Exception $e) {
                echo 'Caught exception: ',  $e->getMessage(), "\n";
            }

    ?>
<?php endif ?>
<!-- <?php include 'view/footer.php'; ?> -->