import 'package:aspen/featuers/home/presentation/views/widgets/container_of_category.dart';
import 'package:flutter/material.dart';

class ListViewOfCategoryItems extends StatefulWidget {
  const ListViewOfCategoryItems({super.key});

  @override
  State<ListViewOfCategoryItems> createState() =>
      _ListViewOfCategoryItemsState();
}

class _ListViewOfCategoryItemsState extends State<ListViewOfCategoryItems> {
  int activeIndex = 0;
  List<String> places = [
    'Location',
    'Hotel',
    'Restaurant',
    'Attraction',
    'Event',
    'Shopping',
    'Activity',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          itemCount: places.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return index == 0
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 22, right: 4),
                      child: ContainerOfCategory(
                        place: places[index],
                        isActive: activeIndex == index,
                      ),
                    ),
                  )
                : index == places.length - 1
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            activeIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 22),
                          child: ContainerOfCategory(
                            place: places[index],
                            isActive: activeIndex == index,
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            activeIndex = index;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: ContainerOfCategory(
                            place: places[index],
                            isActive: activeIndex == index,
                          ),
                        ),
                      );
          }),
    );
  }
}
