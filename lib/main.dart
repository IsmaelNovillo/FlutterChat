import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'login_screen.dart'; 

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyAthflLA6W3H8CVMzJpp60w7T1FuPNTrMk",
        authDomain: "flutterchat-51487.firebaseapp.com",
        databaseURL: "https://flutterchat-51487-default-rtdb.firebaseio.com",
        projectId: "flutterchat-51487",
        storageBucket: "flutterchat-51487.appspot.com",
        messagingSenderId: "189194233772",
        appId: "1:189194233772:web:154dfc32ac2592c82afc09"),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(), 
    );
  }
}
