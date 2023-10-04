import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridBox extends StatelessWidget {
  const GridBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(children: [
            buildCustomCard(
                Icons.medical_services_outlined, 'Medicine', "Your medicine"),
            buildCustomCard(Icons.watch_later_outlined, 'Reminder',
                'Your reminder address'),
          ]),
          Row(
            children: [
              buildCustomCard(
                  Icons.vertical_distribute, 'Dr visits', "Your dr visits"),
              buildCustomCard(Icons.call, 'Call', "3 incomming calls"),
            ],
          )
        ],
      ),
    );
  }

  Widget buildCustomCard(IconData icon, String title, String subtitle) {
    return Expanded(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Radius all rounded
        ),
        color: Colors.white, // White background color
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 5),
                child: Icon(
                  icon,
                  size: 30,
                  color: Colors.black, // Black icon color
                ),
              ),
              SizedBox(height: 15),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Black text color
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 4),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.grey, // Grey text color
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 4)
            ],
          ),
        ),
      ),
    );
  }
}
