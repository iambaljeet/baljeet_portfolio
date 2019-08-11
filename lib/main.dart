import 'dart:html' as html;

import 'package:baljeet_portfolio/responsiveLayout.dart';
import 'package:baljeet_portfolio/styles.dart';
import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<Widget> myLinks() => [
        bottomButtonsWidget('Github', 'https://github.com/iambaljeet'),
        SizedBox(
          width: 10,
        ),
        bottomButtonsWidget('AngelList', 'https://angel.co/imbaljeet'),
        SizedBox(
          width: 10,
        ),
        bottomButtonsWidget(
            'Linkedin', 'https://www.linkedin.com/in/baljeet-singh-402303116/'),
        SizedBox(
          width: 10,
        ),
        bottomButtonsWidget('Twitter', 'https://twitter.com/baljeet_dev'),
        SizedBox(
          width: 10,
        ),
        bottomButtonsWidget(
            'Facebook', 'https://www.facebook.com/ibaljeetsingh'),
        SizedBox(
          width: 10,
        ),
        bottomButtonsWidget(
            'Instagram', 'https://www.instagram.com/iam.baljeet/'),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: ResponsiveLayout.isLargeScreen(context)
                                    ? 200
                                    : 100,
                                width: ResponsiveLayout.isLargeScreen(context)
                                    ? 200
                                    : 100,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('images/my_image.jpg'),
                                ),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Hello',
                                      style: titleTextStyle.copyWith(
                                          fontSize:
                                              ResponsiveLayout.isLargeScreen(
                                                      context)
                                                  ? 28
                                                  : 22),
                                    ),
                                    Text(
                                      'I\'m Baljeet Singh',
                                      style: titleNameStyle.copyWith(
                                          fontSize:
                                              ResponsiveLayout.isLargeScreen(
                                                      context)
                                                  ? 24
                                                  : 18),
                                    ),
                                    Text(
                                      'Software Engineer and Mobile Application Developer in Gurgaon, Haryana, India',
                                      style: subHeadingTextStyle.copyWith(
                                          fontSize:
                                              ResponsiveLayout.isLargeScreen(
                                                      context)
                                                  ? 18
                                                  : 12),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Wrap(
                            children: myLinks(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Made with ❤️ in Flutter',
                        style: bottomFooterTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Text(
                        'By Baljeet Singh',
                        style: bottomFooterTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget bottomButtonsWidget(String text, String url) {
  return InkWell(
    onTap: () => {html.window.open(url, text)},
    child: Text(text),
  );
}
