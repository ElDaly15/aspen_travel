import 'package:aspen/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PriceColumn extends StatelessWidget {
  const PriceColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(),
        Text(
          'Price',
          style: TextStyles.font18SemiBold(context),
        ),
        Text(
          '\$ 200',
          style: TextStyles.font24Bold(context).copyWith(
            color: const Color(0xff2DD7A4),
            fontSize: 28,
          ),
        ),
      ],
    );
  }
}
