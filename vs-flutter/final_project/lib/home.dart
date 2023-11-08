import 'package:flutter/material.dart';
import 'bottom.dart';
import 'top.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.teal[200],
        toolbarHeight: 70,
        elevation: 0,
        title: Image.asset("asset/img/main.png", fit: BoxFit.fill, width: 400, height: 150,),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Top(),
            Bottom(),
          ],
        ),
      ),
    );
  }
}
