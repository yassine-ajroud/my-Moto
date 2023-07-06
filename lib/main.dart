import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_moto/controller/provider.dart';
import 'package:my_moto/view/screens/home_screen.dart';
import 'package:flutter/services.dart';

import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      // navigation bar color
      statusBarColor: Platform.isIOS ? Colors.grey[200] : Colors.indigo,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light

      // status bar color
      ));
  runApp(ChangeNotifierProvider(
    create: ((context) => MyProvide()),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.indigo,
      ),
      home: HomeScreen(
        isIOS: Provider.of<MyProvide>(context,listen: true).ios,
      ),
    );
  }
}
