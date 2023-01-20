<?php
    class DB {
        private static $_db = null;

        public static function getInstence() {
            if(self::$_db == null)
                self::$_db = new PDO('mysql:host=localhost;dbname=ecommerce', 'root', '');

            return self::$_db;
        }

        private function __construct() {}
        private function __clone() {}
        //private function __wakeup() {}

    }