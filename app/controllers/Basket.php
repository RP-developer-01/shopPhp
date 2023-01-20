<?php
    class Basket extends Controller {
        public function index() {
            $data = [];
            $cart = $this->model('BasketModel');
            if (isset($_POST['item_id'])) {
                $cart->addToCart($_POST['item_id']);
            }

            if (!$cart->isSetSession())
                $data['empty'] = 'Пустая корзина';
            else {
                $products = $this->model('Products');
                $data['products'] = $products->getProductsCart($cart->getSession());
            }

            $this->view('basket/index', $data);
        }
    }