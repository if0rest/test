<?
declare(strict_types=1);

class CProducts
{
	private static function getConnection(): PDO
	{
		$opt = [
		   PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
		   PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
		   PDO::ATTR_EMULATE_PREPARES   => false,
		];

		try {
		   return new PDO('mysql:host=localhost;dbname=cv01945_vedita;charset=utf8', 'cv01945_vedita', '61Pjs6VpxfkL', $opt);
		} catch (PDOException $e) {
		   echo 'Ошибка при подключении к БД: ' . $e->getMessage();
		   exit();
		}
	}

	public static function getTable(int $limit = 20, int $offset = 0, string $order = 'DESC'): array
	{
		$pdo = self::getConnection();

		$rsProducts = $pdo->query("
			SELECT `ID`, `PRODUCT_ID`, `PRODUCT_NAME`, `PRODUCT_PRICE`, `PRODUCT_ARTICLE`, `PRODUCT_QUANTITY`,
			DATE_FORMAT(`DATE_CREATE`, '%Y-%m-%d') as `DATE_CREATE`
		    FROM `product`
		    WHERE `ACTIVE` = 'Y'
		    ORDER BY `DATE_CREATE` {$order}
		    LIMIT {$offset}, {$limit}
		");

		$arProducts = [];
		while ($arProduct = $rsProducts->fetch())
		{
			$arProduct['PRODUCT_ARTICLE'] = mb_ereg_replace("\n.+", '', $arProduct['PRODUCT_ARTICLE']);
			$arProducts[] = $arProduct;
		}

		return $arProducts;
	}

	public static function disableItem(int $id): string
	{
		$pdo = self::getConnection();

		$sql = "UPDATE `product` SET `ACTIVE` = 'N' WHERE `ID` = {$id}";

		return ($pdo->exec($sql)) ? 'Элемент деактивирован!' : 'Что-то пошло не так :(';
	}

	public static function updateQuantity(int $id, int $quantity): string
	{
		$pdo = self::getConnection();

		$sql = "UPDATE `product` SET `PRODUCT_QUANTITY` = {$quantity} WHERE `ID` = {$id}";

		return ($pdo->exec($sql)) ? 'Количество товаров изменено!' : 'Количество товаров осталось прежним!';
	}
}

if (array_key_exists('quantity', $_POST))
{
	echo CProducts::updateQuantity(intval($_POST['id']), intval($_POST['quantity']));
}
elseif (array_key_exists('id', $_POST))
{
	echo CProducts::disableItem(intval($_POST['id']));
}
else
{
	$arProducts = CProducts::getTable();
	$fields = array_keys($arProducts[0]);

	include 'assets/table.tpl.php';
}