import 'package:flutter/material.dart';
import 'package:my_activities/components/grid_box.dart';

class CardBox extends StatelessWidget {
  const CardBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Card(
              color: Colors.green,
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "You completed 73% of your tasks this week!",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ),
            ),
            GridBox()
          ],
        ),
        Positioned(
          top: 0,
          child: Image.asset(
            "assets/images/medician.png",
            width: 120, // Set the width of the image
            height: 100, // Set the height of the image
            // fit: BoxFit.cover, // Specify how the image should be resized
          ),
        ),
      ],
    );
  }
}
