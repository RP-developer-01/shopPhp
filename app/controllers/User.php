<?php
    class User extends Controller {
        public function reg() {

            $data = [];
            if(isset($_POST['name'])) {
                $user = $this->model('UserModel');
                $user->setData($_POST['name'], $_POST['email'], $_POST['pass'], $_POST['re_pass']);

                $isValid = $user->validForm();
                if($isValid == "Верно")
                    $user->addUser();
                else
                    $data['message'] = $isValid;
            }

            $this->view('user/reg', $data);
        }

        public function dashboard() {

            $user = $this->model('UserModel');
            $data = ['user' => $user->getUser()];

            if(isset($_POST['exit_btn'])) {
                $user->logOut();
                exit();
            }

            // Если передаются данные для загрузки фото, то работаем с этим фото
            if(isset($_FILES['image_user'])) {
                // Получаем расширение фото. Здесь вы обрезаем фото по символу точка
                $ext = substr(
                    $_FILES['image_user']['name'], strpos($_FILES['image_user']['name'],'.'),
                    strlen($_FILES['image_user']['name']) - 1
                );
                // Далее просто создаем новое имя для фото
                $filename = time().$ext;
                // Указываем папку в которую все будет загружено
                $uploaddir = __DIR__.'/../../public/img/';

                // Указываем имя и папку файла в одну переменную
                $file = $uploaddir . basename($filename);

                $maxsize = 524288; // Максимальный размер 500 КБ
                if($_FILES['image_user']['name'] == '') // Если файл не был указан, то ошибка
                    $data['error'] = 'Вы не указали файла для загрузки';
                // Если размер больше или равен 0, то ошибка
                else if(($_FILES['image_user']['size'] >= $maxsize) || ($_FILES["image_user"]["size"] == 0))
                    $data['error'] = "Файл слишком большой. Максимум <b>500 КБ</b>";
                else {
                    // Загружаем фото в папку проекта через move_uploaded_file
                    move_uploaded_file($_FILES['image_user']['tmp_name'], $file);

                    // Выполняем добавление названия фото в базу данных к пользователю
                    $user->addFotoToUser($filename);

                    // Еще раз получаем объект пользователя из БД для передачи в шаблон
                    $data['user'] = $user->getUser();
                }
            }

            $this->view('user/dashboard', $data);
        }

        public function auth() {

            $data = [];
            if(isset($_POST['email'])) {
                $user = $this->model('UserModel');
                $data['message'] = $user->auth($_POST['email'], $_POST['pass']);
            }

            $this->view('user/auth', $data);
        }
    }