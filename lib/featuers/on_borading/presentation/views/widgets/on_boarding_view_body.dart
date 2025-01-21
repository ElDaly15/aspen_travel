import 'package:aspen/core/utils/app_images.dart';
import 'package:aspen/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          width: double.infinity,
          height: double.infinity,
          Assets.imagesSplashBackground,
          fit: BoxFit.cover,
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 110,
              ),
              Center(child: Image.asset(Assets.imagesAppLogo)),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 42),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      'Plan Your',
                      style: TextStyles.font24Regular(context)
                          .copyWith(color: Colors.white, fontSize: 25),
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      'Luxurios',
                      style: TextStyles.font20Medium(context)
                          .copyWith(color: Colors.white, fontSize: 45),
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      'Vacation',
                      style: TextStyles.font20Medium(context)
                          .copyWith(color: Colors.white, fontSize: 40),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 42),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: const Color(0xff1674F3),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14))),
                  onPressed: () {},
                  child: Text(
                    'Explore ',
                    style: TextStyles.font20SemiBold(context)
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
