import 'package:aspen/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContainerOfFacilities extends StatelessWidget {
  const ContainerOfFacilities(
      {super.key, required this.title, required this.image});
  final String title, image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.21,
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: const Color(0xffF3F8FE),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            image,
            width: 30,
            height: 30,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyles.font18SemiBold(context).copyWith(
              color: const Color(0xffB8B8B8),
            ),
          ),
        ],
      ),
    );
  }
}
