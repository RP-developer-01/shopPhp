<?php
    class Product extends Controller {
        public function index($id) {
            $product = $this->model('Products');
            $this->view('product/index', $product->getOneProduct($id));
        }
    }