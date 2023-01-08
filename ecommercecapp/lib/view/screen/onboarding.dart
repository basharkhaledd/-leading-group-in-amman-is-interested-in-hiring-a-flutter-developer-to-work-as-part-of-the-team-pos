import 'package:ecommercecapp/controller/onboarding_controller.dart';
import 'package:ecommercecapp/core/constant/color.dart';
import 'package:ecommercecapp/data/datasource/static/static.dart';
import 'package:ecommercecapp/view/widget/onboarding/costumbutton.dart';
import 'package:ecommercecapp/view/widget/onboarding/costumslider.dart';
import 'package:ecommercecapp/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());  //
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        const Expanded(flex: 3, child: CostumSliderOnBoarding()),
        Expanded(
            flex: 1,
            child: Column(
              children: const [
                CostumDotControllerOnBoarding(),
                CostumButtonBoarding()
              ],
            )),
      ],
    )));
  }
}
