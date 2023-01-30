<!doctype html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Главная страница</title>
    <meta name="description" content="Главная страница интернет магазина">

    <link rel="stylesheet" href="/public/css/main.css" charset="utf-8">
    <link rel="stylesheet" href="/public/css/products.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" crossorigin="anonymous">
</head>

<body>
    <?php require 'public/blocks/header.php' ?>

    <div class="main">
        <h1>Популярные товары</h1>
        <div class="products">
            <?php for($i = 0; $i < count($data); $i++): ?>
            <div class="product-card">
                <!--<div class="badge">Hot</div>-->
                <div class="product-imag">
                    <img src="/public/img/<?=$data[$i]['img']?>" alt="<?=$data[$i]['title']?>">
                </div>
                <div class="product-details">
                    <span class="product-catagory">Women,bag</span>
                    <h4><a href="/product/<?=$data[$i]['id']?>"><?=$data[$i]['title']?></a></h4>
                    <p><?=$data[$i]['anons']?></p>
                    <div class="product-bottom-details">
                        <div class="product-price">$230.99<small>$96.00</small></div>
                        <div class="product-links">
                            <a href=""><i class="fa fa-heart"></i></a>
                            <a href=""><i class="fa fa-shopping-cart"></i></a>
                        </div>
                        <a href="/product/<?=$data[$i]['id']?>"><button class="btn"><span>Детальнее</span></button></a>
                    </div>
                </div>
            </div>
            <?php endfor; ?>
        </div>
    </div>

    <?php require 'public/blocks/footer.php' ?>
</body>

</html>