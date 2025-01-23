import 'package:aspen/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButtomWithIcon extends StatelessWidget {
  const CustomButtomWithIcon(
      {super.key, required this.icon, required this.title, this.onPressed});
  final IconData icon;
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff176FF2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(12),
          ),
          onPressed: onPressed,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              const SizedBox(width: 5),
              Text(
                title,
                style: TextStyles.font20SemiBold(context)
                    .copyWith(color: Colors.white),
              ),
              const Spacer(),
              Icon(
                icon,
                color: Colors.white,
              ),
              const Spacer(),
            ],
          ),
        ),
      ],
    );
  }
}
