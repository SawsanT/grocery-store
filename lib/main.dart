import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/modal/cart_model.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context)=> CartModel(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),

      ),
    );
    // return MaterialApp(
    //   

    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    //   home: const HomePage(),
    //   // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    // );
  }
}

