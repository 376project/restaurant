<?php include '../view/header.php'; ?>
		<main>
			<div class="container">
				<h3>Desserts</h3>
				<table>
					<tr>
						<th>Picture</th>
						<th>Title</th>
						<th>Description</th>
						<th>Price</th>
						<th></th>
					</tr>
					<?php 
							try {
								require __DIR__ . "/../controller/database.php";
								require __DIR__ . "/../controller/desserts_db.php";

								$desserts = select_desserts();

								foreach ($desserts as $dessert):

									echo '<tr>';
										echo '<td><img src="' . $dessert['imageURL'] . '" style="width:50px;height:50px;"/></td>';
										echo '<td>' . $dessert['title'] . '</td>';
										echo '<td>' . $dessert['descript'] . '</td>';
										echo '<td>' . $dessert['price'] . '</td>';
										echo '<td>';
											echo '<form action="cart.php" method="post">';
											echo '<input type="hidden" name="ID" value="' . $dessert['ID'] . '">';
											echo '<input type="number" name="Quantity" min="1">';
											echo '<input type="submit" value="Add To Cart">';
											echo '</form>';
										echo '</td>';
									echo '</tr>';

								endforeach;
							}
							catch (Exception $e) {
								echo 'Caught exception: ',  $e->getMessage(), "\n";
							}
					?>
			</table>
			</div>
		</main>
<?php include '../view/footer.php'; ?>