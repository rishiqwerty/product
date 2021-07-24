import 'package:corona/utils/Routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LogP extends StatefulWidget {
  @override
  _LogPState createState() => _LogPState();
}

class _LogPState extends State<LogP> {
  String name = '';
  bool changebutton = false;
  final form_key = GlobalKey<FormState>();
  tohome(BuildContext context) async {
    if (form_key.currentState.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return (Material(
      color: context.canvasColor,
      child: SingleChildScrollView(
        child: Form(
          key: form_key,
          child: Column(
            children: [
              Image.asset(
                'assets/images/log.png',
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome $name',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Username',
                        labelText: 'Username',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Username cannot be empty';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Enter Your Name', labelText: 'Full Name'),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Enter Your Address', labelText: 'Address'),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Enter a secure password',
                          labelText: 'Password'),
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Password cannot be empty';
                        } else if (value.length < 6) {
                          return 'Please enter characters more than 6';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter a Email',
                        labelText: 'Email',
                        suffixText: '@gmail.com',
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Material(
                      color: context.theme.buttonColor,
                      borderRadius:
                          BorderRadius.circular(changebutton ? 50 : 8),
                      child: InkWell(
                        onTap: () => tohome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changebutton ? 50 : 150,
                          height: 50,
                          alignment: Alignment.center,
                          child: changebutton
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
                          // shape: changebutton
                          //     ? BoxShape.circle
                          //     : BoxShape.rectangle,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
