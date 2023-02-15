import 'package:flutter_mvc/app/views/screens/login.dart';
import 'package:flutter/material.dart';
import 'vendor/Application.dart';
import 'vendor/Configration.dart';
import 'config/environment.dart';

void main() {
  Application app = Application(Configration(env));

  // print(app.container['configration']);
  // print(app.get('configration'));
  // print(app.has('configdration'));
  // app.share('configration',Configration(env));
  // print(app.router.routeList());
  // print(app.router.routeExists(name: 'home'));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: Configration.env() == 'demo' ? true : false,
    home: LoginScreen(),
  ),);
  // print(Configration.showEnviroment());
}
