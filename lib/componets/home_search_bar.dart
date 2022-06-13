import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/search_page.dart';

class home_search_bar extends StatelessWidget {
  const home_search_bar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      child: SizedBox(
        width: size.width,
        child: TextField(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SearchPage();
            }));
          },
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: 'Search Movie',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
              hintStyle: GoogleFonts.ubuntu()),
        ),
      ),
    );
  }
}
