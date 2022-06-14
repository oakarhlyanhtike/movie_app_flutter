import 'package:flutter/material.dart';

import '../constant/constant.dart';
class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: SizedBox(
        height: size.height / 10,
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'The Movies'.toUpperCase(),
              style: headerTextStyle
            ),
            Container(
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height / 40,
                backgroundImage: AssetImage('assets/profile.jpeg'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
