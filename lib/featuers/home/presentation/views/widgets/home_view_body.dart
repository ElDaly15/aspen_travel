import 'package:aspen/featuers/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:aspen/featuers/home/presentation/views/widgets/custom_header_of_section.dart';
import 'package:aspen/featuers/home/presentation/views/widgets/list_view_of_category_items.dart';
import 'package:aspen/featuers/home/presentation/views/widgets/list_view_of_popular_places.dart';
import 'package:aspen/featuers/home/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SafeArea(
            child: SizedBox(
          height: 10,
        )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: CustomAppBar(),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: SearchTextField(),
        ),
        SizedBox(
          height: 30,
        ),
        ListViewOfCategoryItems(),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: CustomHeaderOfSections(
            textTitle: 'Popular',
          ),
        ),
        SizedBox(
          height: 10,
        ),
        ListViewOfPopularPlaces(),
      ],
    );
  }
}
