import 'package:absen/providers/login_provider.dart';
import 'package:absen/views/login_screen/widget/button_login.dart';
import 'package:absen/views/register_screen/view/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import '../../../services/shared_prederences.dart';
import '../../../utils/utils.dart';
import '../../home_screen/home_screen.dart';

class LoginScreen extends StatefulWidget {
  // static const String routeName = 'login-screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  // @override
  // void initState() {
  //   final provider = Provider.of<LogInProvider>(context, listen: false);
  //   provider.addListener(
  //     () {
  //       if (provider.myState == MyState.failed) {
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           SnackBar(
  //             duration: const Duration(seconds: 5),
  //             content: Container(
  //               height: 30,
  //               alignment: Alignment.center,
  //               child: Text("Wrong Email and Password!"),
  //             ),
  //             backgroundColor: Colors.red,
  //           ),
  //         );
  //       } else if (provider.myState == MyState.loaded) {
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           SnackBar(
  //             duration: const Duration(seconds: 5),
  //             content: Container(
  //               height: 30,
  //               alignment: Alignment.center,
  //               child: Text("Login Successfully!"),
  //             ),
  //             backgroundColor: Colors.green,
  //           ),
  //         );
  //         Navigator.pushNamedAndRemoveUntil(
  //             context, HomeScreen.routeName, (route) => false);
  //       }
  //     },
  //   );
  //   super.initState();
  // }

  bool _passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<LogInProvider>(context, listen: false);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 250),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 35),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 46,
                  width: 292,
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                    controller: _emailController,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: "input email",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 46,
                  width: 292,
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: _passwordVisible,
                    decoration: InputDecoration(
                        hintText: "input password",
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              color: Colors.black,
                            ))),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                width: 150,
                padding: EdgeInsets.only(left: 35),
                child: ButtonLogin(
                  onPressed: () async {
                    // final prf = SharedService();

                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const HomeScreen(),
                        ));
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 40,
                ),
                child: Text(
                  "forgot password?",
                  style:
                      TextStyle(color: Colors.red, fontStyle: FontStyle.italic),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
