//import 'package:eval2_sis22/pages/home.dart';
//import 'package:eval2_sis22/pages/home.dart';
import 'package:evals2/firebase_options.dart';
import 'package:evals2/pages/home.dart';
import 'package:evals2/views/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:eval2_sis22/views/login_page.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
