
import 'package:flutter/material.dart';

import 'package:login_signup_page/register.dart';

import 'package:login_signup_page/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // jo debug likha hua aata tha
    initialRoute: 'login', // ye pehla page yhi khulega
    routes: { // jitne b pages bna rkhe ho sb likh do
      'login' : (context)=> MyLogin(),
      'register' : (context)=> MyRegister()
    },
  ));
}
