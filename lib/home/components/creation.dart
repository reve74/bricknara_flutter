import 'package:brichnara_flutter/constraints.dart';
import 'package:flutter/material.dart';


class Creation extends StatelessWidget {
  const Creation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CreationCard(title: '창작품1', image: 'assets/images/bottom_image_4.jpeg',press: () {}, writer: 'king',),
          CreationCard(title: '창작품1', image: 'assets/images/bottom_image_5.jpg',press: () {}, writer: 'queen',),
          CreationCard(title: '창작품1', image: 'assets/images/bottom_image_4.jpeg',press: () {}, writer: 'ddd',),
        ],
      ),
    );
  }
}

class CreationCard extends StatelessWidget {
  const CreationCard({
    Key? key,
    this.press,
    this.image,
    this.title,
    this.writer,
  }) : super(key: key);

  final Function()? press;
  final String? image;
  final String? title;
  final String? writer;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height; // 미디어쿼리 세로 높이
    double width = size.width;

    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2,
      ),
      width: width * 0.6,
      // height: 185,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10),
      //   image: DecorationImage(
      //     fit: BoxFit.cover,
      //     image: AssetImage('assets/images/bottom_image_4.jpeg'),
      //   ),
      // ),
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: [
            Container(
              height: height * 0.3,
              child: ClipRRect(
                // 이미지 부분
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  //'assets/images/bottom_image_4.jpeg',
                  image!,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Text(
                    title!, // 글 제목
                    style: Theme.of(context).textTheme.button,
                  ),
                  Spacer(),
                  Text( //작성자
                    writer!,
                    style: Theme.of(context).textTheme.button,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
