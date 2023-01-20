<?php
    class Contact extends Controller {
        public function index() {

            $data = [];
            if(isset($_POST['name'])) {
                $mail = $this->model('ContactModel');
                $mail->setData($_POST['name'], $_POST['email'], $_POST['age'], $_POST['message']);

                $isValid = $mail->validForm();
                if($isValid == "Верно")
                    $data['message'] = $mail->mail();
                else
                    $data['message'] = $isValid;
            }

            $this->view("contact/index", $data);
        }

        public function about() {
            $this->view("contact/about");
        }
    }