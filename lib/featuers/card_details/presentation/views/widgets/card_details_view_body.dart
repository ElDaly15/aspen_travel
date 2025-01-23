import 'package:aspen/core/utils/app_styles.dart';
import 'package:aspen/featuers/card_details/presentation/views/widgets/custom_btm.dart';
import 'package:aspen/featuers/card_details/presentation/views/widgets/price_column.dart';
import 'package:aspen/featuers/card_details/presentation/views/widgets/row_of_facilites.dart';
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
    return CustomScrollView(
      slivers: [
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          sliver: SliverToBoxAdapter(
            child: SafeArea(
              child: SizedBox(height: 10),
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          sliver: SliverToBoxAdapter(
            child: ImageStackAndContainer(),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
          sliver: SliverToBoxAdapter(
            child: RowOfShowMap(),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping',
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
                    alignment: Alignment.centerLeft,
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 0),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Read More',
                        style: TextStyles.font18Bold(context).copyWith(
                          color: const Color(0xff176FF2),
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Color(0xff176FF2),
                        size: 25,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
          sliver: SliverToBoxAdapter(
            child: Text(
              'Facilities',
              style: TextStyles.font24SemiBold(context),
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          sliver: SliverToBoxAdapter(
            child: RowOfFacilites(),
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 30),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  const PriceColumn(),
                  const Spacer(),
                  SizedBox(
                    width: 200,
                    child: CustomButtomWithIcon(
                      onPressed: () {},
                      icon: Icons.arrow_forward,
                      title: 'Book Now',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
