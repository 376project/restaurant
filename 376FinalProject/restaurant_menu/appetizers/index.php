<?php include '../view/header.php'; ?>
<!DOCTYPE <!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<!-- <title>Page Title</title> -->
		<link rel="stylesheet" type="text/css" media="screen" href="../main.css" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	</head>
	<body>
		<main>
        <h3>Appetizers</h3>
			<table>
				<tr>
                    <th>Picture</th>
					<th>Title</th>
					<th>Description</th>
					<th>Price</th>
					<th></th>
				</tr>
				<?php foreach ($items as $item): ?>
				<tr>
                    <td><img src=<?php echo $item['imageURL'] ?> style="width:25px;height:25px;"/></td>
					<td><?php echo $item['title'] ?></td>
					<td><?php echo $item['descript']; ?></td>
					<td><?php echo $item['price']; ?></td>
					<td>
						<form action="cart.php" method="post">
							<input type="hidden" name="ID" value="<?php echo $item['ID'] ?>">
							<input type="submit" value="Select">
						</form>
					</td>
				</tr>
			    <?php endforeach; ?>
		</table>
		</main>
	</body>
</html>
<?php include '../view/footer.php'; ?>