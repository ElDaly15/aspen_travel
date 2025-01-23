import 'package:aspen/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class RowOfShowMap extends StatelessWidget {
  const RowOfShowMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Coeurdes Alpes',
              style: TextStyles.font24SemiBold(context).copyWith(fontSize: 25),
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Color(0xffF8D675),
                  size: 22,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '4.5 (123 Reviews)',
                  style: TextStyles.font14SemiBold(context)
                      .copyWith(color: const Color(0xff606060)),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'Show Map',
            style: TextStyles.font18Bold(context).copyWith(
              color: const Color(0xff176FF2),
            ),
          ),
        )
      ],
    );
  }
}
