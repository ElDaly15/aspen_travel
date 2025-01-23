import 'package:aspen/core/utils/app_styles.dart';
import 'package:aspen/featuers/card_details/presentation/views/widgets/row_of_show_map.dart';
import 'package:aspen/featuers/card_details/presentation/views/widgets/stack_of_image_and_container.dart';
import 'package:flutter/material.dart';

class CardDetailsViewBody extends StatefulWidget {
  const CardDetailsViewBody({super.key});

  @override
  State<CardDetailsViewBody> createState() => _CardDetailsViewBodyState();
}

class _CardDetailsViewBodyState extends State<CardDetailsViewBody> {
  int? maxLines = 5;
  bool switchBetweenSeeMore = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SafeArea(
            child: SizedBox(
              height: 10,
            ),
          ),
          const ImageStackAndContainer(),
          const SizedBox(
            height: 20,
          ),
          const RowOfShowMap(),
          const SizedBox(
            height: 14,
          ),
          Text(
            'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping andAspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping anpen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping andAspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping a',
            style: TextStyles.font18Medium(context).copyWith(
              color: const Color(0xff606060),
            ),
            maxLines: maxLines,
            overflow: switchBetweenSeeMore
                ? TextOverflow.visible
                : TextOverflow.ellipsis,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                switchBetweenSeeMore = !switchBetweenSeeMore;
                maxLines = switchBetweenSeeMore ? null : 5;
              });
            },
            style: ButtonStyle(
              padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(vertical: 0),
              ),
            ),
            child: SizedBox(
              width: 120,
              child: Row(
                children: [
                  Text(
                    'Read More',
                    style: TextStyles.font18Bold(context).copyWith(
                      color: const Color(0xff176FF2),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color(0xff176FF2),
                    size: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
