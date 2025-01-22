import 'package:aspen/core/utils/app_images.dart';
import 'package:aspen/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffF3F8FE),
        hintText: 'Find thing to do',
        hintStyle: TextStyles.font18SemiBold(context)
            .copyWith(color: const Color(0xffB8B8B8)),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0), // Add padding if needed
          child: SvgPicture.asset(
            Assets.imagesSearch,
            width: 20,
            height: 20,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(22)),
        ),
      ),
    );
  }
}
