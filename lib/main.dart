import 'package:flutter/material.dart';
import 'package:shopisan_dev/services/authentication.dart';
import 'package:shopisan_dev/pages/root_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopisan',
      theme: ThemeData(
             primarySwatch: Colors.red,
      ),
      home: new RootPage(auth: new Auth()),
    );
  }
}
