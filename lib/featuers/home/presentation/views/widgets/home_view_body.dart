import 'package:aspen/featuers/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:aspen/featuers/home/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          SafeArea(
              child: SizedBox(
            height: 10,
          )),
          CustomAppBar(),
          SizedBox(
            height: 15,
          ),
          SearchTextField(),
        ],
      ),
    );
  }
}
