import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home-screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _iconVisible = false;
  String time = DateFormat('HH:mm:ss').format(DateTime.now());
  String? saveTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.only(left: 10.0, right: 10, top: 50),
            child: Column(children: [
              Container(
                height: 189,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 80,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/pas.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      width: 130,
                      height: 115,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: Text(
                              "Hello,",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            child: Text(
                              "Syakila",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                child: Icon(
                                  Icons.timer,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                child: Text(
                                  saveTime = time,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _iconVisible = !_iconVisible;
                        });
                      },
                      icon: Image.asset(_iconVisible
                          ? "assets/submit.png"
                          : "assets/clock_out.png"),
                      iconSize: 50,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage("assets/background.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 80,
                    width: 150,
                    child: Column(
                      children: [
                        Spacer(),
                        Container(
                          child: Text(
                            "Clocked in",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: Text(
                            "time clock in",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Spacer()
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage("assets/background.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: 80,
                    width: 150,
                    child: Column(
                      children: [
                        Spacer(),
                        Container(
                          child: Text(
                            "Clocked out",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: Text(
                            "time clock out",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Spacer()
                      ],
                    ),
                  ),
                ],
              ),
            ])),
      ),
    );
  }
}
