import 'package:aspen/featuers/home/presentation/views/widgets/home_view_body.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var _selectedTab = _SelectedTab.home;
  late PageController pageController;
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  void _handleIndexChanged(int i) {
    setState(() {
      selectedIndex = i;
      pageController.animateToPage(selectedIndex,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutQuad);
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeViewBody(),
          HomeViewBody(),
          HomeViewBody(),
          HomeViewBody(),
          HomeViewBody(),
        ],
      ),
      bottomNavigationBar: CrystalNavigationBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        height: 10,
        // indicatorColor: Colors.blue,
        unselectedItemColor: const Color.fromARGB(179, 71, 71, 71),
        backgroundColor: Colors.black.withOpacity(0.1),

        onTap: _handleIndexChanged,
        items: [
          /// Home
          CrystalNavigationBarItem(
            icon: IconlyBold.home,
            unselectedIcon: IconlyLight.home,
            selectedColor: const Color.fromARGB(255, 44, 44, 44),
          ),

          /// Favourite
          CrystalNavigationBarItem(
            icon: IconlyBold.heart,
            unselectedIcon: IconlyLight.heart,
            selectedColor: Colors.red,
          ),

          /// Add
          CrystalNavigationBarItem(
            icon: IconlyBold.plus,
            unselectedIcon: IconlyLight.plus,
            selectedColor: const Color.fromARGB(255, 44, 44, 44),
          ),

          /// Search
          CrystalNavigationBarItem(
            icon: IconlyBold.search,
            unselectedIcon: IconlyLight.search,
            selectedColor: const Color.fromARGB(255, 44, 44, 44),
          ),

          /// Profile
          CrystalNavigationBarItem(
            icon: IconlyBold.user_2,
            unselectedIcon: IconlyLight.user,
            selectedColor: const Color.fromARGB(255, 44, 44, 44),
          ),
        ],
      ),
    );
  }
}

enum _SelectedTab { home, favorite, add, search, person }
