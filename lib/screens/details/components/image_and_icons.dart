import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: kDefaultPadding *3),
      child: SizedBox(
        height: size.height*0.7,
        child: Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        padding:
                            const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg")),
                  ),
                  const Spacer(),
                  const IconCard(imageName: "assets/icons/sun.svg",),
                   const IconCard(imageName: "assets/icons/icon_2.svg",),
                    const IconCard(imageName: "assets/icons/icon_3.svg",),
                     const IconCard(imageName: "assets/icons/icon_4.svg",)
        
                ],
              ),
            )),
            Container(
              height: size.height * 0.7,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.29)),
                  ],
                  borderRadius: const BorderRadius.only(
                      topLeft: const Radius.circular(63),
                      bottomLeft: const Radius.circular(70)),
                  image: const DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: const AssetImage("assets/images/img.png"))),
            )
          ],
        ),
      ),
    );
  }
}
