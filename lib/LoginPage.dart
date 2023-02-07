import 'package:flutter/material.dart';
import 'Element/Logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Login")),
        body: Column(children: const <Widget>[
          Expanded(child: MyLogo()),
          Expanded(child: LoginForms())
        ]));
  }
}

class LoginForms extends StatelessWidget {
  const LoginForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        child: Center(
            child: Column(children: <Widget>[
          Expanded(
              child: Text("The Cube Project",
                  style: DefaultTextStyle.of(context)
                      .style
                      .apply(fontSizeFactor: 2.0))),
          Expanded(
              child: Row(children: const <Widget>[
            Expanded(child: Text("Username")),
            Expanded(child: TextField())
          ])),
          Expanded(
              child: Row(children: const <Widget>[
            Expanded(child: Text("Password")),
            Expanded(child: TextField())
          ])),
          Expanded(child: Text("Login button")),
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(
                // <-- Icon
                Icons.download,
                size: 24.0,
              ),
              label: Text('Google Login'), // <-- Text
            ),
          ),
        ])));
  }
}
