import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio_x/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: VxBox(
              child: VStack([
                Stack(
                  children: [
                    ZStack([
                      Row(
                        children: [
                          VStack([
                            if (context.isMobile) 50.heightBox else 10.heightBox,
                            CustomAppBar(),
                            30.heightBox,
                            "Lokesh\nJangid"
                                .text
                                .white
                                .xl5
                                .lineHeight(1)
                                .size(context.isMobile ? 15 : 20)
                                .bold
                                .make(),
                            10.heightBox,
                            VxBox().color(Coolors.accentColor).size(60, 10).make().px4(),
                            30.heightBox,
                            SocialAccounts(),
                          ]).pSymmetric(h: context.percentWidth * 10, v: 32,),
                          Expanded(
                            child: VxResponsive(
                              medium: IntroductionWidget().pOnly(left: 120).h(context.percentHeight * 60),
                              large: IntroductionWidget().pOnly(left: 120).h(context.percentHeight * 60),
                              fallback: const Offstage(),
                            ),
                          ),
                        ],
                      ).w(context.screenWidth),
                    ]),
                  ],
                )
      ]).scrollVertical(),
      )
          .size(context.screenWidth, context.percentHeight * 60)
          .color(Coolors.secondaryColor)
          .make(),
    );
  }
}


class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          " - Introduction".text.gray500.widest.sm.make(),
          10.heightBox,
          "Flutter App Developer |Adobe XD for Flutter |EE Student at MBM | Web Development | Tflite | Python "
              .text
              .white
              .xl3
              .maxLines(5)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40),
          20.heightBox,
        ].vStack(),
        // RaisedButton(
        //   onPressed: () {
        //     launch("https://mtechviral.com");
        //   },
        //   hoverColor: Vx.purple700,
        //   shape: Vx.roundedSm,
        //   color: Coolors.accentColor,
        //   textColor: Coolors.primaryColor,
        //   child: "Visit mtechviral.com".text.make(),
        // ).h(50)
      ],
      // crossAlignment: CrossAxisAlignment.center,
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolors.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.twitter,
        color: Colors.white,
      ).mdClick(() {
        launch("https://twitter.com/Lokeshj39647363");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.instagram,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.instagram.com/lkrjangid/");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.linkedin_square,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.linkedin.com/in/lkrjangid/");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.github,
        color: Colors.white,
      ).mdClick(() {
        launch("https://github.com/lkrjangid1");
      }).make()
    ].hStack();
  }
}
