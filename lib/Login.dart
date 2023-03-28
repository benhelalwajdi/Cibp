import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /*appBar: AppBar(
        title: Text("Login Page"),
      ),*/
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    child: Image.asset('assets/images/cibp.jpg')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail بريد إلكتروني',
                    hintText:
                        'Digite um e-mail válido أدخل بريدًا إلكترونيًا صالحًا'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Senha كلمة المرور',
                    hintText: 'Digite a senha segura أدخل كلمة مرور آمنة'),
              ),
            ),
            TextButton(
              onPressed: () {
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text(
                'Esqueceu sua senha هل نسيت كلمة السر',
                style: TextStyle(color: Colors.green, fontSize: 15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: 125,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => MyHomePage(title: 'title')()));
                */
                },
                child: Text(
                  'Conecte-se \n تسجيل الدخول',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            TextButton(
                onPressed: () {
                  //TODO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text(
                  'Novo usuário? Criar uma conta \n مستخدم جديد؟ إنشاء حساب',
                  textAlign: TextAlign.center,
                )),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  _launchUrl();
                },
                child: Text(
                  'Visite o nosso site \n قم بزيارة موقعنا على الإنترنت',
                  textAlign: TextAlign.center,
                )),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(Uri.parse('https://cibp.org.br/'))) {
      throw Exception('Could not launch https://cibp.org.br/');
    }
  }
}
