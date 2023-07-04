import 'package:flutter_onboard/flutter_onboard.dart';


class OnBoardData{

  static final List<OnBoardModel> onBoardData = [
    const OnBoardModel(
      title: "Shop with us",
      description: "Goal support your motivation and inspire you to work harder",
      imgUrl: "assets/images/onboard_one.png",
    ),
    const OnBoardModel(
      title: "Get exciting deals and offers",
      description:
      "Analyse personal result with detailed chart and numerical values",
      imgUrl: 'assets/images/onboard_two.png',
    ),
    const OnBoardModel(
      title: "Lets get started",
      description:
      "Take before and after photos to visualize progress and get the shape that you dream about",
      imgUrl: 'assets/images/onboard_three.png',
    ),
  ];
}