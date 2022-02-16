import 'package:brichnara_flutter/constraints.dart';
import 'package:brichnara_flutter/detail/components/title_and_price.dart';
import 'package:flutter/material.dart';

import 'image_and_icons.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          TitleAndPrice(
            title: 'Angelica',
            country: 'Russia',
            price: 440,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width / 2,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
