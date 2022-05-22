import 'package:flutter/gestures.dart';
import 'package:onlinepay/Sign_up.dart';
import 'package:onlinepay/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Flutter Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Splash(),

      //const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //const MyHomePage({Key? key, required this.title}) : super(key: key);

  //final String title;
  final TextEditingController accountController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
   final _auth =FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Container(width: 200, height: 200, child: Image.asset('assets/images/user.webp')
                        ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Account/Phone Number',
                          //border: OutlineInputBorder(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                          ),
                          prefixIcon: Icon(Icons.account_balance),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25.0),
                            ),
                          ),
                          prefixIcon: Icon(Icons.lock),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        child: FlatButton(
                            splashColor: Colors.green[70],
                            // focusColor: Colors.red,
                            hoverColor: Colors.blue[50],
                            textColor: Colors.blue,
                            disabledTextColor: Colors.black,
                            disabledColor: Colors.grey,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 120,
                              vertical: 25,
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0), side: const BorderSide(color: Colors.blue)),
                            child: const Text(
                              'Sign in',
                              style: TextStyle(
                                /*color: Colors.black,*/
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ));
                            }),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RichText(
                            text: TextSpan(text: "Don't Have an Account?!", style: const TextStyle(color: Colors.black, fontSize: 15), children: <TextSpan>[
                          TextSpan(
                              text: 'Sign Up',
                              style: const TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const MyForm(),
                                      ));
                                })
                        ]))),
                  ],
                )));
  }
}
