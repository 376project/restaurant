<?php include '../view/header.php'; ?>
		<main>
			<div class="container">
				<h3>Sides</h3>
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
								require __DIR__ . "/../controller/sides_db.php";

								$sides = select_sides();

								foreach ($sides as $side):

									echo '<tr>';
										echo '<td><img src="' . $side['imageURL'] . '" style="width:50px;height:50px;"/></td>';
										echo '<td>' . $side['title'] . '</td>';
										echo '<td>' . $side['descript'] . '</td>';
										echo '<td>' . $side['price'] . '</td>';
										echo '<td>';
											echo '<form action="cart.php" method="post">';
											echo '<input type="hidden" name="ID" value="' . $side['ID'] . '">';
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