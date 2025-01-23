import 'package:aspen/featuers/card_details/presentation/views/widgets/card_details_view_body.dart';
import 'package:flutter/material.dart';

class CardDetailsView extends StatelessWidget {
  const CardDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CardDetailsViewBody(),
    );
  }
}
