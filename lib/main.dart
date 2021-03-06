import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tutorial/signUp.dart';
import 'package:tutorial/home.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ' My First Application ',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const LogIn(),
    );
  }
}
class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              width: 200,
              height: 200,
              child: Image.network('data:image/png;base64,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'),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email Adress',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.bottomLeft, end: Alignment.topRight, colors: [Colors.teal , Colors.tealAccent]),),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const home(),
                    ));
                  },
                  child: const Text('Log In', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RichText(
                  text: TextSpan(
                    text: 'Don\'t Have an Account? ',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                    ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                        color: Colors.teal[300],
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      recognizer: TapGestureRecognizer() ..onTap = (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => const MyForm(),
                        ),);
                      },
                    ),
                  ],
                  ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: ,src
    );
  }
}
