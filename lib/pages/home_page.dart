import 'package:flutter/material.dart';
import 'package:radio_ai/utils/ai_util.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Stack(
        children: [
          VxAnimatedBox()
              .size(context.screenWidth, context.screenHeight)
              .withGradient(LinearGradient(
                  colors: [AiColors.primaryColor1, AiColors.primartColor2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight))
              .make(),
          AppBar(
            title: "AI Radio"
                .text
                .xl4
                .bold
                .make()
                .shimmer(primaryColor: Vx.purple300, secondaryColor: Vx.white),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          )
        ],
      ),
    );
  }
}
