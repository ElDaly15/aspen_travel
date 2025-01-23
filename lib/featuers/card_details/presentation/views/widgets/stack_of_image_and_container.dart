import 'package:aspen/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class ImageStackAndContainer extends StatefulWidget {
  const ImageStackAndContainer({super.key});

  @override
  State<ImageStackAndContainer> createState() => _ImageStackAndContainerState();
}

class _ImageStackAndContainerState extends State<ImageStackAndContainer> {
  bool switchBtm = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 380,
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
                image: AssetImage(Assets.imagesPopularOne), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new,
                size: 18,
                color: Color(0xffB8B8B8),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -20,
          right: 10,
          child: Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 1),
                ),
              ],
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () {
                setState(() {});
                switchBtm = !switchBtm;
              },
              icon: Icon(
                switchBtm ? Icons.favorite_border : Icons.favorite,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
