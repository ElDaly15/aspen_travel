import 'package:aspen/core/utils/app_images.dart';
import 'package:aspen/featuers/home/data/models/popular_place_model.dart';
import 'package:aspen/featuers/home/presentation/views/widgets/container_of_popular_place_model.dart';
import 'package:flutter/material.dart';

class ListViewOfPopularPlaces extends StatefulWidget {
  const ListViewOfPopularPlaces({super.key});

  @override
  State<ListViewOfPopularPlaces> createState() =>
      _ListViewOfPopularPlacesState();
}

class _ListViewOfPopularPlacesState extends State<ListViewOfPopularPlaces> {
  List<PopularPlaceModel> popularPlaces = [
    PopularPlaceModel(
      image: Assets.imagesPopularOne,
      title: 'Alley Palace',
      rate: '4.1',
    ),
    PopularPlaceModel(
      image: Assets.imagesPopularTwo,
      title: 'Coeurdes Alpes',
      rate: '4.5',
    ),
    PopularPlaceModel(
      image: Assets.imagesPopularOne,
      title: 'Alley Palace',
      rate: '4.1',
    ),
    PopularPlaceModel(
      image: Assets.imagesPopularTwo,
      title: 'Coeurdes Alpes',
      rate: '4.5',
    ),
    PopularPlaceModel(
      image: Assets.imagesPopularOne,
      title: 'Alley Palace',
      rate: '4.1',
    ),
    PopularPlaceModel(
      image: Assets.imagesPopularTwo,
      title: 'Coeurdes Alpes',
      rate: '4.5',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
          itemCount: popularPlaces.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return index == 0
                ? Padding(
                    padding: const EdgeInsets.only(left: 22, right: 16),
                    child: ContainerOfPopularSection(
                      popularPlaceModel: popularPlaces[index],
                    ),
                  )
                : index == popularPlaces.length - 1
                    ? Padding(
                        padding: const EdgeInsets.only(right: 22),
                        child: ContainerOfPopularSection(
                          popularPlaceModel: popularPlaces[index],
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: ContainerOfPopularSection(
                          popularPlaceModel: popularPlaces[index],
                        ));
          }),
    );
  }
}
