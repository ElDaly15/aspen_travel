import 'package:aspen/core/utils/app_images.dart';
import 'package:aspen/featuers/card_details/presentation/views/widgets/container_of_facilites.dart';
import 'package:flutter/material.dart';

class RowOfFacilites extends StatelessWidget {
  const RowOfFacilites({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ContainerOfFacilities(
          title: 'Wifi',
          image: Assets.imagesWifi,
        ),
        Spacer(),
        ContainerOfFacilities(
          title: 'Dinner',
          image: Assets.imagesKitchen,
        ),
        Spacer(),
        ContainerOfFacilities(
          title: '1 Tub',
          image: Assets.imagesBanuo,
        ),
        Spacer(),
        ContainerOfFacilities(
          title: 'Pool',
          image: Assets.imagesPool,
        ),
      ],
    );
  }
}
