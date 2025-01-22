import 'package:aspen/core/utils/app_images.dart';
import 'package:aspen/featuers/home/data/models/recommended_model.dart';
import 'package:aspen/featuers/home/presentation/views/widgets/container_of_recommended.dart';
import 'package:flutter/material.dart';

class ListViewOfRecommendedPlaces extends StatefulWidget {
  const ListViewOfRecommendedPlaces({super.key});

  @override
  State<ListViewOfRecommendedPlaces> createState() =>
      _ListViewOfRecommendedPlacesState();
}

class _ListViewOfRecommendedPlacesState
    extends State<ListViewOfRecommendedPlaces> {
  List<RecommendedModel> recommendedPlaces = [
    RecommendedModel(
        title: 'Explore Aspen', image: Assets.imagesCityOne, code: '4N/5D'),
    RecommendedModel(
        title: 'Luxurious Aspen', image: Assets.imagesCityTwo, code: '2N/3D'),
    RecommendedModel(
        title: 'Explore Aspen', image: Assets.imagesCityOne, code: '4N/5D'),
    RecommendedModel(
        title: 'Luxurious Aspen', image: Assets.imagesCityTwo, code: '2N/3D'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
          itemCount: recommendedPlaces.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return index == 0
                ? Padding(
                    padding: const EdgeInsets.only(left: 22, right: 16),
                    child: ContainerOfRecommended(
                      recommendedModel: recommendedPlaces[index],
                    ),
                  )
                : index == recommendedPlaces.length - 1
                    ? Padding(
                        padding: const EdgeInsets.only(right: 22),
                        child: ContainerOfRecommended(
                          recommendedModel: recommendedPlaces[index],
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: ContainerOfRecommended(
                          recommendedModel: recommendedPlaces[index],
                        ),
                      );
          }),
    );
  }
}
