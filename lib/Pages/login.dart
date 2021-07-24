import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/log.png", fit: BoxFit.cover),
            SizedBox(height: 20.0),
            Text(
              'WELCOME',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter Username', labelText: 'Username'),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Enter Password', labelText: 'password'),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      print("Hi Freak!");
                    },
                    child: Text('Login'),
                    style: TextButton.styleFrom(),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
