import 'package:aspen/core/utils/app_styles.dart';
import 'package:aspen/featuers/card_details/presentation/views/card_details_view.dart';
import 'package:aspen/featuers/home/data/models/popular_place_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;

class ContainerOfPopularSection extends StatefulWidget {
  const ContainerOfPopularSection({super.key, required this.popularPlaceModel});

  final PopularPlaceModel popularPlaceModel;

  @override
  State<ContainerOfPopularSection> createState() =>
      _ContainerOfPopularSectionState();
}

class _ContainerOfPopularSectionState extends State<ContainerOfPopularSection> {
  bool switchBtm = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        g.Get.to(() => const CardDetailsView(),
            transition: g.Transition.leftToRightWithFade,
            duration: const Duration(milliseconds: 50));
      },
      child: Stack(
        children: [
          Container(
            height: 240,
            width: 188,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.popularPlaceModel.image),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: const Color(0xfF4D5652),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                widget.popularPlaceModel.title,
                style: TextStyles.font14Medium(context)
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: const Color(0xfF4D5652),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const Icon(Icons.star, color: Color(0xffF8D675), size: 16),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.popularPlaceModel.rate,
                    style: TextStyles.font14Medium(context)
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 10,
            child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {
                    setState(() {});
                    switchBtm = !switchBtm;
                  },
                  icon: Icon(
                    switchBtm ? Icons.favorite_border : Icons.favorite,
                    color: Colors.red,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
