import 'package:ecommercecapp/controller/onboarding_controller.dart';
import 'package:ecommercecapp/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class CostumButtonBoarding extends GetView<OnBoardingControllerImp> {
  const CostumButtonBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  Container(
              margin: const EdgeInsets.only(top: 100),
              child: MaterialButton(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              onPressed: (){
                controller.next();
              },color: AppColor.primaryColor,child: const Text("Continue "),),);
  }
}