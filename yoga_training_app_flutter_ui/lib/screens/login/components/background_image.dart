import 'package:flutter/material.dart';
import 'package:yoga_training_app_flutter_ui/constants/constants.dart';
import 'package:yoga_training_app_flutter_ui/screens/login/components/curve_clipper.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ClipPath(
      clipper: CurveClipper(),
      child: Container(
        height: size.height * 0.55,
        color: purpleShade.withOpacity(0.8),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: appPadding / 2, vertical: appPadding * 3),
          child: Center(
            child: Image(
              image: AssetImage('assets/images/yoga.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
