import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30, top: 150, left: 10),
            child: Image.asset("image/Instagram Logo.png"),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 20, left: 10),
            child: CircleAvatar(
              radius: 50,
              child: Image(
                width: 100,
                height: 100,
                image: AssetImage("image/images.png"),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, bottom: 20),
            child: Text(
              "jacob_w",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 44,
              width: 307,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.blue,
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Log in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Switch accounts",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 220),
            child: Divider(),
          ),
          TextButton(
            onPressed: () {},
            child: RichText(
              text: const TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(
                    color: Colors.grey,
                    wordSpacing: 2.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black , wordSpacing: 2.0),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
