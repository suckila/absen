import 'package:absen/providers/login_provider.dart';
import 'package:absen/views/login_screen/view/login_screen.dart';
import 'package:absen/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
    // return MultiProvider(
    //     providers: [
    //       ChangeNotifierProvider(
    //         create: (context) => LogInProvider(),
    //       ),
    //     ],
    //     child: MaterialApp(
    //         debugShowCheckedModeBanner: false,
    //         theme: ThemeData(
    //           scaffoldBackgroundColor: Colors.white,
    //           fontFamily: 'Poppins',
    //         ),
    //         home: const SplashScreen(),
    //         routes: {
    //           SplashScreen.routeName: (context) => const SplashScreen(),
    //           LoginScreen.routeName: (context) => const LoginScreen(),
    //         }));
  }
}
