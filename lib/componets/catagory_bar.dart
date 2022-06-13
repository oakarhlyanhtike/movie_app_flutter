import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constant/constant.dart';

class CatagoryBar extends StatefulWidget {
  const CatagoryBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<CatagoryBar> createState() => _CatagoryBarState();
}

class _CatagoryBarState extends State<CatagoryBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size.width,
      height: widget.size.height / 15,
      child: ListView.builder(
          itemCount: genre.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                margin: const EdgeInsets.only(left: 16),
                alignment: Alignment.center,
                width: widget.size.width / 4,
                decoration: selectedIndex ==  index? BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 37, 136, 218),
                      Color.fromARGB(255, 145, 173, 187)
                    ])): BoxDecoration(color: Colors.transparent),
                child: Text(genre[index].toUpperCase(),
                    style: GoogleFonts.ubuntu(
                        fontSize: 14, fontWeight: FontWeight.w500)),
              ),
            );
          }),
    );
  }
}
