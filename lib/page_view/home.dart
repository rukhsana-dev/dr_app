import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_activities/page_view/family.dart';

import '../components/card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent, // Status bar color
          statusBarIconBrightness: Brightness.dark, // Status bar icons
        ),
        backgroundColor: Colors.white, // White background color
        elevation: 0, // No shadow
        title: Padding(
          padding: EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.align_vertical_center_rounded, // Left side icon
                color: Colors.green, // Icon color
                size: 24, // Icon size
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    'John Doe', // Text for title
                    style: TextStyle(
                      color: Colors.black, // Black text color for title
                      fontSize: 15, // Text size for title
                    ),
                  ),
                  Text(
                    "ID:Q17A521XAB", // Text for ID
                    style: TextStyle(
                      color: Colors.grey, // Grey text color for ID
                      fontSize: 10, // Text size for ID
                    ),
                  ),
                ],
              ),
              Spacer()
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return FamilyPage();
                      },
                    ));
                  },
                  child: Icon(
                    CupertinoIcons.arrow_right_circle, // Right side icon
                    color: Color.fromARGB(255, 95, 86, 86), // Icon color
                    size: 26, // Icon size
                  ),
                ),

                // You can add more icons or widgets here if needed
              ],
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildDayCard("  4\nMon", isSelected: false),
                buildDayCard("  5\nTue",
                    isSelected: true), // Selected day is green
                buildDayCard("  6\nWed", isSelected: false),
                buildDayCard("  7\nThur", isSelected: false),
                buildDayCard("  8\nFri", isSelected: false),
              ],
            ),
          ),

          // card box
          CardBox()
        ],
      ),
    );
  }

  Widget buildDayCard(String day, {bool isSelected = false}) {
    return Card(
      color: isSelected ? Colors.green : Color(0xff616161),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Container(
        height: 53,
        padding: EdgeInsets.all(11),
        child: Column(
          children: [
            Text(
              day,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
