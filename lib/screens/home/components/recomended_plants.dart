import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../details/components/details_screen.dart';

class RecomendedPlants extends StatelessWidget {
  const RecomendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        
        children: <Widget>[
          RecomendPlantCard(
          title: "Samantha",
          country: "India",
          image: "assets/images/image_1.png",
          price: 400,
          press: () {},
        ),
         RecomendPlantCard(
          title: "Samantha",
          country: "India",
          image: "assets/images/image_2.png",
          price: 400,
          press: () {},
        ),
        RecomendPlantCard(
          title: "Samantha",
          country: "India",
          image: "assets/images/image_3.png",
          price: 400,
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));
          },
        ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key? key,
    this.country,
    this.title,
    this.image,
    this.price,
    required this.press,
  }) : super(key: key);
  final String? country, title, image;
  final int? price;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      width: size.width * 0.4,
      child: Column(children: <Widget>[
        Image.asset(image!),
        GestureDetector(
          onTap: press,
          child: Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23))
                ]),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                          text: "$country".toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  price.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .button!
                      .copyWith(color: kPrimaryColor),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
