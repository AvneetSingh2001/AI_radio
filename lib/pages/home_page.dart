import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radio_ai/models/radio.dart';
import 'package:radio_ai/utils/ai_util.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<MyRadio> radios;

  @override
  void initState() {
    super.initState();
    fetchRadios();
  }

  fetchRadios() async {
    final radioJson = await rootBundle.loadString("assets/files/radio.json");
    radios = MyRadioList.fromJson(radioJson).radios;
    print(radios);
    setState(() {});
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
          ),
          VxSwiper.builder(
              itemCount: radios.length,
              aspectRatio: 1.0,
              enlargeCenterPage: true,
              itemBuilder: (context, index) {
                final rad = radios[index];

                return VxBox(child: ZStack([]))
                    .bgImage(DecorationImage(
                        image: NetworkImage(rad.image),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.3), BlendMode.darken)))
                    .border(color: Colors.black, width: 5.0)
                    .withRounded(value: 60)
                    .make()
                    .p16()
                    .centered();
              })
        ],
        fit: StackFit.expand,
      ),
    );
  }
}
