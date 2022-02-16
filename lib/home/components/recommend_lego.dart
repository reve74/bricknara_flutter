import 'package:brichnara_flutter/constraints.dart';
import 'package:brichnara_flutter/detail/detail_screen.dart';
import 'package:flutter/material.dart';

class RecommendLego extends StatelessWidget {
  const RecommendLego({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendLegoCard(
            product: 'Boutique Hotel',
            price: 440,
            state: 'New',
            image: 'assets/images/lego_1.jpg',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailScreen(),
                ),
              );
            },
          ),
          RecommendLegoCard(
            product: 'Penguin Figure',
            price: 20,
            state: 'Rare',
            image: 'assets/images/lego_2.jpg',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailScreen(),
                ),
              );
            },
          ),
          RecommendLegoCard(
            product: 'Giraffe Figure',
            price: 25,
            state: 'Rare',
            image: 'assets/images/lego_3.jpg',
            press: () {},
          ),
          RecommendLegoCard(
            product: 'Chicken Figure',
            price: 15,
            state: 'Rare',
            image: 'assets/images/lego_4.jpg',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecommendLegoCard extends StatelessWidget {
  const RecommendLegoCard(
      {Key? key,
      required this.product,
      required this.price,
      required this.image,
      this.state,
      required this.press})
      : super(key: key);

  final String? image, product, state;
  final int? price;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height; // 미디어쿼리 세로 높이
    double width = size.width;

    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: width * 0.41,
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
                  image!,
                  fit: BoxFit.cover,
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
                  //   Column(
                  //     children: [
                  //       Text(
                  //         '$product',
                  //         style: Theme.of(context).textTheme.button,
                  //       ),
                  //       Text(
                  //         '$state',
                  //         style: TextStyle(
                  //           color: kPrimaryColor.withOpacity(0.5),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  RichText(
                    // RichText, RichText 속성
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$state\n',
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                        TextSpan(
                          text: product,
                          style: Theme.of(context).textTheme.button,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price\n',
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
