
import 'package:brichnara_flutter/constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/body.dart';
import '../components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: buildAppbar(),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

AppBar buildAppbar() {
  return AppBar(
    backgroundColor: kPrimaryColor,
    centerTitle: true,
    elevation: 0,
    title: const Text(
      'BRICK NARA',
      style: TextStyle(
        color: Colors.yellowAccent,
      ),
    ),
    leading: IconButton(
      onPressed: () {},
      icon: SvgPicture.asset('assets/icons/menu.svg'),
    ),
  );
}
