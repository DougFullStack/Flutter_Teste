import 'package:flutter/material.dart';
import 'package:flutterapp/app/view/contactform.dart';
import 'package:flutterapp/app/view/contactlist.dart';

class MyApp extends StatelessWidget {
  static const HOME = '/'; //usamos static para acessar a variavel pela classe
  static const CONTACT_LIST = 'contactform';
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      routes: {
        HOME: (context) => ContactList(),
        CONTACT_LIST: (context) => ContactForm(),
      },
    );
  }
}
