import 'package:ecommercecapp/controller/onboarding_controller.dart';
import 'package:ecommercecapp/core/constant/color.dart';
import 'package:ecommercecapp/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CostumSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CostumSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Text(
                  "${onBoardingList[i].title}",
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 80,
                ),
                Image.asset(
                  "${onBoardingList[i].image}",
                  width: 200,
                  height: 230,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text("${onBoardingList[i].body}",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: AppColor.black, height: 2, fontSize: 17)))
              ],
            ));
  }
}
