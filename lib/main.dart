import 'package:CIBP/Login.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'CIBP',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // A widget which will be started on application startup
      home: /*MyHomePage(title: 'Flutter Demo Home Page'),*/
          SplashScreen(
              seconds: 3,
              navigateAfterSeconds:
                  Login(), //MyHomePage(title: 'Flutter Demo Home Page'),
              title: new Text(
                ' Centro Islâmico \n Beneficente do Paraná \n المركز الإسلامي الخيري في بارانا',
                textAlign: TextAlign.center,
                style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.green),
              ),
              image: new Image.asset('assets/images/cibp.png'),
              photoSize: 100.0,
              backgroundColor: Colors.white,
              styleTextUnderTheLoader: new TextStyle(),
              loaderColor: Colors.green),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Centro Islâmico',
        ),
      ),
    );
  }
}
