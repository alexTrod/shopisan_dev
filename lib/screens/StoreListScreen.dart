import 'package:flutter/material.dart';
import 'package:shopisan_dev/components/StoreList/List.dart';

class StoreListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stores",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: StoreList()//,
      ),
    );
  }
}

