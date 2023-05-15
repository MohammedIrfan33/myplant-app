import 'package:flutter/material.dart';
import 'package:myplants/utils/constants/colores.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        //page view
        children: [
          PageView(
            controller: _controller,
            children: [
              Container(color: Colors.red,),
              Container(color: Colors.yellow,),
              Container(color: Colors.white,),
              Container(color: Colors.blue,),
            ],
          ),
        //smooth indicatores
        Container(
          alignment: const Alignment(0,0.75),
          child: SmoothPageIndicator(
            controller: _controller, 
            count: 4,
            effect: ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              spacing: 4,
              expansionFactor: 2,
              dotColor: AppColors.kLightGreen,
              activeDotColor: AppColors.kMossGreen
            )
            ),
        )
          

        ],
      ),
    );
  }
}
