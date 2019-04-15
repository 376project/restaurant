<?php include '../view/header.php'; ?>
		<main>
			<div class="container">
				<h3>Appetizers</h3>
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
								require __DIR__ . "/../controller/appetizers_db.php";

								$appetizers = select_appetizers();

								foreach ($appetizers as $appetizer):

									echo '<tr>';
										echo '<td><img src="' . $appetizer['imageURL'] . '" style="width:50px;height:50px;"/></td>';
										echo '<td>' . $appetizer['title'] . '</td>';
										echo '<td>' . $appetizer['descript'] . '</td>';
										echo '<td>' . $appetizer['price'] . '</td>';
										echo '<td>';
											echo '<form action="../cart.php" method="post">';
											echo '<input type="hidden" name="ID" value="' . $appetizer['ID'] . '">';
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