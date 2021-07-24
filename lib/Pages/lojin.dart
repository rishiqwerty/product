import 'package:corona/utils/Routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Logi extends StatefulWidget {
  @override
  _LogiState createState() => _LogiState();
}

class _LogiState extends State<Logi> {
  @override
  String name = '';
  bool x = false;
  Widget build(BuildContext killer) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/log.png'),
            SizedBox(
              height: 23,
            ),
            Text(
              'Welcome $name Please provide the following details',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter Full Name', labelText: 'Name'),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter Class you study in',
                        labelText: 'Class'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter your School Name',
                        labelText: 'School'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter your University Roll Number',
                        labelText: 'Roll Number'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter your Percentage',
                        labelText: 'Percentage'),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        x = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: x ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: x
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          // shape: changebutton
                          //     ? BoxShape.circle
                          //     : BoxShape.rectangle,

                          borderRadius: BorderRadius.circular(x ? 50 : 8)),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   child: Text('Signup'),
                  //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
