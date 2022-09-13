import 'package:app_flutter/app/controller/app.dart';
import 'package:app_flutter/app/pages/home.dart';
import 'package:app_flutter/app/pages/login.dart';
import 'package:app_flutter/app/pages/perfil.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (BuildContext context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: Colors.green,
              brightness: AppController.instance.isDarkTheme
                  ? Brightness.dark
                  : Brightness.light,
            ),
            initialRoute: "/",
            routes: {
              '/': ((context) => HomePage()),
              'home': ((context) => HomePage()),
              'perfil': ((context) =>  PerfilPage()),              
            }
          );
        });
  }
}
