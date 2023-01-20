<?php
    session_start();
    class BasketModel {
        private $session_name = 'cart';

        public function isSetSession() {
            return isset($_SESSION[$this->session_name]);
        }

        public function deleteSession() {
            unset($_SESSION[$this->session_name]);
        }

        public function getSession() {
            return $_SESSION[$this->session_name];
        }

        public function addToCart($itemID) {
            if (!$this->isSetSession())
                $_SESSION[$this->session_name] = $itemID;
            else {
                $items = explode(",", $_SESSION[$this->session_name]);

                $itemExist = false;
                foreach ($items as $el) {
                    if ($el == $itemID)
                        $itemExist = true;
                }

                if (!$itemExist)
                    $_SESSION[$this->session_name] = $_SESSION[$this->session_name]. ',' . $itemID;
            }
        }

        public function countItems() {
            if (!$this->isSetSession())
                return 0;
            else {
                $items = explode(",", $_SESSION[$this->session_name]);
                return count($items);
            }
        }
    }