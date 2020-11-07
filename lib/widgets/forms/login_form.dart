import 'package:Being/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:Being/widgets/buttons/login_button.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _autoValidate;

  String _email;
  TextEditingController _emailController;

  String _password;
  TextEditingController _passwordController;

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _autoValidate = false;
    _emailController = TextEditingController();
    _password = '';
    _passwordController = TextEditingController();
  }

  String validateEmail(String value) {
    if (value.length == 0) return 'Please enter email.';
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Invalid email';
    else
      return null;
  }

  String validatePassword(String value) {
    if (value.length == 0) {
      return 'Please enter password';
    } else {
      return null;
    }
  }

  InputDecoration inputDecoration(String label, IconData icon,
      {bool passwordStrength = false}) {
    return InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.white54,
      ),
      labelText: label,
      labelStyle: TextStyle(
        fontSize: 18.0,
        color: Colors.white54,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.redAccent,
          width: 1.5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white54,
          width: 1.5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.red,
          width: 2.5,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Form(
          key: _formKey,
          autovalidate: _autoValidate,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: TextFormField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  controller: _emailController,
                  decoration: inputDecoration(
                    'Email',
                    Icons.alternate_email,
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: validateEmail,
                  onSaved: (val) {
                    _email = val;
                  },
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.025,
                    ),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      controller: _passwordController,
                      decoration: inputDecoration(
                        'Password',
                        Icons.security,
                        passwordStrength: true,
                      ),
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      validator: validatePassword,
                      onChanged: (val) {
                        setState(() {
                          _password = val;
                        });
                      },
                      onSaved: (val) {
                        _password = val;
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.015,
                          right: MediaQuery.of(context).size.width * 0.025,
                        ),
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Colors.redAccent,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => Home(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.025,
                  ),
                  child: loginButton(MediaQuery.of(context).size.height),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
