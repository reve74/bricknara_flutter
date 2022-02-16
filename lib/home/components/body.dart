import 'package:brichnara_flutter/home/components/recommend_lego.dart';
import 'package:brichnara_flutter/home/components/title_with_more_btn.dart';
import 'package:flutter/material.dart';

import '../../constraints.dart';

import 'creation.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height; // 미디어쿼리 세로 높이
    double width = size.width; // 미디어쿼리 가로 높이
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(height: height, username: 'User',),
          TitleWithMoreBtn(
            title: 'Recommended',
            press: () {},
          ),
          RecommendLego(),
          TitleWithMoreBtn(
            title: 'Creation',
            press: () {},
          ),
          Creation(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}
