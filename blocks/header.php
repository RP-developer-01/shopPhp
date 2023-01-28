<header>
    <div class="main_top-menu">
        <div class="container">
            <div class="top-menu">
                <div class="nav">
                    <a href="/">Главная</a>
                    <a href="/contact">Контакты</a>
                    <a href="/contact/about">Про компанию</a>
                </div>
                <div class="tel">
                    <i class="fas fa-phone"></i> +380 (00) 000 - 00 - 00
                </div>
            </div>
        </div>
    </div>
    <div class="container middle">
        <div class="logo">
            <img src="/public/img/logo.svg" alt="Logo">
            <span>Мы знаем что вы хотите!</span>
        </div>
        <div class="auth-checkout">
            <a href="/basket">
                <?php
                require_once 'app/models/BasketModel.php';
                $basketModel = new BasketModel();
                ?>
                <button class="btn basket">Корзина <b>(<?= $basketModel->countItems() ?>)</b></button>
            </a><br>
            <?php if (!isset($_COOKIE['login'])) : ?>
                <a class="auth" href="/user/auth">
                    <button class="btn auth">Войти</button>
                </a>
                <a class="reg" href="/user/reg">
                    <button class="btn">Регистрация</button>
                </a>
            <?php else : ?>
                <a class="dashboard" href="/user/dashboard">
                    <button class="btn dashboard">Кабинет пользователя</button>
                </a>
            <?php endif; ?>
        </div>
    </div>
    <div class="menu">
        <ul>
            <li><a href="/categories">Все товары</a></li>
            <li><a href="/categories/shoes">Обувь</a></li>
            <li><a href="/categories/hats">Кепки</a></li>
            <li><a href="/categories/shirts">Футболки</a></li>
            <li><a href="/categories/watches">Часы</a></li>
        </ul>
    </div>
</header>