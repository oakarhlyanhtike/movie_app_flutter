import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //header
          HomeHeader(size: size),
          //search

          home_search_bar(size: size),
          const SizedBox(
            height: 15.0,
          ),
          //catagory
          CatagoryBar(size: size),
          //build title
          buildTitle('Now Playing Movies'),

          //slider
          CarouselSlider(
              items: [
                Stack(
                  children: [
                    Container(
                      width: size.width,
                      padding: const EdgeInsets.only(left: 14, bottom: 24),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage('assets/slider.jpeg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.black12, Colors.black])),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 8, bottom: 8),
                              child: Text(
                                'Movie Name',
                                style: GoogleFonts.ubuntu(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 8, bottom: 8),
                              child: Row(
                                children: [
                                  starComponent(),
                                  starComponent(),
                                  starComponent(),
                                  starComponent(),
                                  starComponent(),
                                  Text('(5.0)'),
                                ],
                              ),
                            )
                          ],
                        ))
                  ],
                )
              ],
              options: CarouselOptions(
                  height: 200, autoPlay: true, enlargeCenterPage: true))
        ]),
      ),
    ));
  }

  Widget buildTitle(String titleName) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titleName,
            style:
                GoogleFonts.ubuntu(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          TextButton(
              onPressed: (() {
                //TODO: show movies with grid views when click see all
              }),
              child: const Text('See all'))
        ],
      ),
    );
  }
}

class starComponent extends StatelessWidget {
  const starComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Icon(
        FontAwesomeIcons.solidStar,
        color: Colors.yellow,
        size: 10,
      ),
    );
  }
}

       //popular movie list
       