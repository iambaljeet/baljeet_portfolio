import 'package:baljeet_portfolio/responsiveLayout.dart';
import 'package:baljeet_portfolio/styles.dart';
import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(8.0),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(8.0),
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
                            backgroundImage: AssetImage('images/my_image.jpg'),
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
                                        ResponsiveLayout.isLargeScreen(context)
                                            ? 28
                                            : 22),
                              ),
                              Text(
                                'I\'m Baljeet Singh',
                                style: titleNameStyle.copyWith(
                                    fontSize:
                                        ResponsiveLayout.isLargeScreen(context)
                                            ? 24
                                            : 18),
                              ),
                              Text(
                                'An Android Application Developer From Gurugram, India',
                                style: paragraphTextStyle.copyWith(
                                    fontSize:
                                        ResponsiveLayout.isLargeScreen(context)
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
                      children: <Widget>[
                        InkWell(
                          onTap: () => {},
                          child: Text('Github'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () => {},
                          child: Text('Linkedin'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () => {},
                          child: Text('Twitter'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () => {},
                          child: Text('Facebook'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () => {},
                          child: Text('Instagram'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
