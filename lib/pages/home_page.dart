import 'package:flutter/material.dart';
import 'package:radio_ai/utils/ai_util.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Stack(
        children: [
          VxAnimatedBox()
              .size(context.screenWidth, context.screenHeight)
              .withGradient(LinearGradient(
                  colors: [AiColors.primartColor2, AiColors.primaryColor1]))
              .make(),
        ],
      ),
    );
  }
}
