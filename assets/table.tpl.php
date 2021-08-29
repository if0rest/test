<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="/assets/style.css">
	<title>Document</title>
</head>
<body>
	<div class="table-responsive">
		<table class="table table-striped table-hover table-bordered align-middle">
			<thead class="table-dark">
				<tr>
				<?foreach ($fields as $field):?>
					<th><?= $field; ?></th>
				<?endforeach;?>
					<th>HIDE</th>
				</tr>
			</thead>
			<tbody>
			<?foreach ($arProducts as $arProduct):?>
				<tr>
				<?foreach ($arProduct as $key => $val):?>
					<?if ($key === 'PRODUCT_QUANTITY'):?>
						<td>
							<div class="count__wrap">
								<form class="count__form" action="" method="post">
									<button type="button" class="count__btn count__minus btn btn-primary" <?if(!$val) echo 'disabled'?>>-</button>
									<input class="count__input" type="number" value="<?= $val; ?>" data-id="<?=$arProduct['ID']?>" autocomplete="off">
									<button type="button" class="count__btn count__plus btn btn-primary">+</button>
								</form>
							</div>
						</td>
					<?else:?>
						<td><?= $val; ?></td>
					<?endif;?>
				<?endforeach;?>
					<td><button type="button" data-id="<?=$arProduct['ID']?>" class="hide-btn btn btn-primary">Скрыть</button></td>
				</tr>
			<?endforeach;?>
			</tbody>
		</table>
	</div>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="/assets/script.js"></script>
</body>
</html>