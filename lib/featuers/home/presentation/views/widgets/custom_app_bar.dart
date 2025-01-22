import 'package:aspen/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Explore',
                    style: TextStyles.font20Medium(context),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.location_on_outlined,
                    color: Colors.blueAccent,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Aspen,USA',
                    style: TextStyles.font20Medium(context)
                        .copyWith(color: const Color(0xff606060)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.blueAccent,
                    size: 24,
                  ),
                ],
              ),
              Text(
                'Aspen',
                style:
                    TextStyles.font14SemiBold(context).copyWith(fontSize: 32),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
