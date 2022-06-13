import 'package:flutter/material.dart';
import '../componets/catagory_bar.dart';
import '../componets/home_header.dart';
import '../componets/home_search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header
            HomeHeader(size: size),
            //search
            home_search_bar(size: size),
            const SizedBox(
              height: 15.0,
            ),
            //catagory
            CatagoryBar(size: size)
          ],
        )),
      ),
    );
  }
}
