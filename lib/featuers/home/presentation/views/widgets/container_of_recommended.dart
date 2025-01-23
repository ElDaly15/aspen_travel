import 'package:aspen/core/utils/app_styles.dart';
import 'package:aspen/featuers/card_details/presentation/views/card_details_view.dart';
import 'package:aspen/featuers/home/data/models/recommended_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;

class ContainerOfRecommended extends StatelessWidget {
  const ContainerOfRecommended({super.key, required this.recommendedModel});
  final RecommendedModel recommendedModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        g.Get.to(() => const CardDetailsView(),
            transition: g.Transition.leftToRightWithFade,
            duration: const Duration(milliseconds: 500));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Container(
          padding: const EdgeInsets.only(top: 5),
          width: 210,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 4,
                offset: const Offset(0, 1),
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Center(
                  child: Container(
                    height: 120,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(recommendedModel.image),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -10,
                  right: 15,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: const Color(0xff3A544F),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        recommendedModel.code,
                        style: TextStyles.font14Bold(context)
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(recommendedModel.title,
                  style: TextStyles.font20SemiBold(context)),
            ),
          ]),
        ),
      ),
    );
  }
}
