import 'package:aspen/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ContainerOfCategory extends StatelessWidget {
  const ContainerOfCategory(
      {super.key, required this.isActive, required this.place});
  final bool isActive;
  final String place;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeInOut,
      duration: const Duration(milliseconds: 350),
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
      decoration: BoxDecoration(
          color: isActive ? const Color(0xffF3F8FE) : Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(22))),
      child: Text(
        place,
        style: TextStyles.font18SemiBold(context).copyWith(
            color:
                isActive ? const Color(0XFF176FF2) : const Color(0xffB8B8B8)),
      ),
    );
  }
}
