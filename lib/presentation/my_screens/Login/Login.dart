import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 200,width: 230,),
            SizedBox(height: 200,width: 230,),
            SizedBox(height: 200,width: 230,),
            SizedBox(height: 200,width: 230,),
          ],
        ),
      ),
    );
  }
}
