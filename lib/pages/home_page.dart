import 'package:covid_tracker_ui/pages/detail_page.dart';
import 'package:covid_tracker_ui/themes/constant.dart';
import 'package:covid_tracker_ui/widgets/card_status.dart';
import 'package:covid_tracker_ui/widgets/line_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
        child: ListView(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: SvgPicture.asset(
                "assets/images/burger_icon.svg",
                width: 15,
                height: 15,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Covid19 Tracker App",
              style: appTitle,
            )
          ],
        ),
        SizedBox(
          height: 40,
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, (MaterialPageRoute(builder: (_) => DetailPage())));
          },
                  child: Container(
            width: double.infinity,
            height: 140,
            decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: -10,
                  child: Container(
                    height: 140,
                    child: Image.asset(
                      "assets/images/image_1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned.fill(
                  left: 120,
                  top: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Take The Self Checkup!",
                          style: appSubTitle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Contains several checklist question to check your phisical condition",
                          style: contentWhite,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Transmission Update",
                  style: appSubTitle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Latest Update : 13 March 2020",
                  style: contentWhite,
                )
              ],
            ),
            GestureDetector(
                onTap: () {
                  // your pulling api refresh here
                },
                child: Icon(
                  Icons.refresh,
                  color: textWhite,
                ))
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CardStatus(
              iconName: LineIcons.flash,
              colorCard: warning,
              newCases: "+25",
              totalCases: "7,987",
              status: "Active",
            ),
            SizedBox(
              width: 20,
            ),
            CardStatus(
              iconName: LineIcons.heart,
              colorCard: success,
              newCases: "+5",
              totalCases: "11,09",
              status: "Recovered",
            ),
            SizedBox(
              width: 20,
            ),
            CardStatus(
              iconName: LineIcons.close,
              colorCard: primary,
              newCases: "+25",
              totalCases: "335",
              status: "Deceased",
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Spread Trends",
              style: appSubTitle,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: textWhite.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Active Cases",
                          style: TextStyle(color: warning, fontSize: 16),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "7,978",
                              style: TextStyle(
                                  color: warning,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "[+25]",
                              style: TextStyle(color: warning),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Weekly",
                          style: TextStyle(color: textWhite),
                        ),
                        SizedBox(width: 20,),
                        Text(
                          "Monthly",
                          style: TextStyle(color: textWhite),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: 45,
                            height: 3,
                            decoration: BoxDecoration(
                              color: textWhite,
                              borderRadius: BorderRadius.circular(3)
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 2,
                            decoration: BoxDecoration(
                              color: textWhite.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(3)
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    chartWidget
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
