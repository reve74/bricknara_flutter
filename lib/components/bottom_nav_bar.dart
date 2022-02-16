import 'package:brichnara_flutter/constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(
        right: kDefaultPadding * 2,
        left: kDefaultPadding * 2,
        bottom: kDefaultPadding / 2,
      ),
      height: height * 0.1,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 90,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/flower.svg',
              color: kPrimaryColor,
            ),
            color: kPrimaryColor,
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/heart-icon.svg',
              color: kPrimaryColor,
            ),
            color: kPrimaryColor,
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/user-icon.svg',
              color: kPrimaryColor,
            ),
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
