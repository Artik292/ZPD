<?php
require 'vendor/autoload.php';
$app = new \atk4\ui\App('Днюха Яны');
$app->initLayout('Centered');
$app->layout->template->del('Header');
$app->layout->add(['Image',"https://img-fotki.yandex.ru/get/4914/110106211.d/0_142c6a_8ad8f2e7_orig",'small centered'],'Header');
$form = $app->add(["Form"]);
$form->addField(["ans","caption"=>"Ответ: "]);
$form->onSubmit(function($form) {
  If ($form->model["ans"] == "лодка") {
    return $form->success('Самое популярное число в моих снапах');
  } else {
     return $form->error('ans','Неверно');
  }
});
