import 'package:aspen/featuers/card_details/presentation/views/widgets/stack_of_image_and_container.dart';
import 'package:flutter/material.dart';

class CardDetailsViewBody extends StatefulWidget {
  const CardDetailsViewBody({super.key});

  @override
  State<CardDetailsViewBody> createState() => _CardDetailsViewBodyState();
}

class _CardDetailsViewBodyState extends State<CardDetailsViewBody> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          SafeArea(
            child: SizedBox(
              height: 10,
            ),
          ),
          ImageStackAndContainer(),
        ],
      ),
    );
  }
}
