import 'package:aspen/featuers/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:aspen/featuers/home/presentation/views/widgets/custom_header_of_section.dart';
import 'package:aspen/featuers/home/presentation/views/widgets/list_view_of_category_items.dart';
import 'package:aspen/featuers/home/presentation/views/widgets/list_view_of_popular_places.dart';
import 'package:aspen/featuers/home/presentation/views/widgets/list_view_of_recommended_places.dart';
import 'package:aspen/featuers/home/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // SafeArea and SizedBox to add padding at the top
        const SliverToBoxAdapter(
          child: SafeArea(
              child: SizedBox(
            height: 10,
          )),
        ),

        // CustomAppBar wrapped in SliverToBoxAdapter
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          sliver: SliverToBoxAdapter(
            child: CustomAppBar(),
          ),
        ),

        // SearchTextField widget with spacing
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          sliver: SliverToBoxAdapter(
            child: SearchTextField(),
          ),
        ),

        // Category List
        SliverPadding(
          padding: const EdgeInsets.only(top: 30),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              const ListViewOfCategoryItems(),
            ]),
          ),
        ),

        // Custom Header "Popular" with spacing
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          sliver: SliverToBoxAdapter(
            child: CustomHeaderOfSections(textTitle: 'Popular'),
          ),
        ),

        // List of Popular Places
        SliverPadding(
          padding: const EdgeInsets.only(top: 10),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              const ListViewOfPopularPlaces(),
            ]),
          ),
        ),

        // Custom Header "Recommended" with spacing
        const SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          sliver: SliverToBoxAdapter(
            child: CustomHeaderOfSections(textTitle: 'Recommended'),
          ),
        ),

        const SliverToBoxAdapter(
          child: ListViewOfRecommendedPlaces(),
        ),
      ],
    );
  }
}
