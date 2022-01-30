import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var hasLogin = false.obs;
  var obscureText = true.obs;
  var buttonLogin = false.obs;

  @override
  void onInit(){
    emailController.addListener(colorChange);
    passwordController.addListener(colorChange);
    super.onInit();
  }

  void colorChange(){
    if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty){
      buttonLogin.value = true;
    }else{
      buttonLogin.value = false;
    }
  }

  void toggle(){
    obscureText.value = !obscureText.value; 
  }

  void login(){
    hasLogin.value = true;
  }
}