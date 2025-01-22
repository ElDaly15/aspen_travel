import 'package:aspen/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomHeaderOfSections extends StatelessWidget {
  const CustomHeaderOfSections({super.key, required this.textTitle});
  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          textTitle,
          style: TextStyles.font22SemiBold(context),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'See all',
            style: TextStyles.font18SemiBold(context).copyWith(
              color: const Color(0xff176FF2),
            ),
          ),
        )
      ],
    );
  }
}
