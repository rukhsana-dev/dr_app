import 'package:flutter/material.dart';
import 'package:diamond_bottom_bar/diamond_bottom_bar.dart';

class FamilyPage extends StatefulWidget {
  const FamilyPage({super.key});

  @override
  State<FamilyPage> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<FamilyPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: DiamondBottomNavigation(
          selectedColor: Colors.green,
          selectedLightColor: Colors.green,
          itemIcons: const [
            Icons.home,
            Icons.notifications,
            Icons.message,
            Icons.account_box,
          ],
          centerIcon: Icons.add,
          selectedIndex: selectedIndex,
          onItemPressed: (p0) {
            setState(() {
              selectedIndex = p0;
            });
          },
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(),
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://img.freepik.com/free-vector/doctors-white-robe-thank-you_23-2148498003.jpg?w=996&t=st=1694864160~exp=1694864760~hmac=566a8cd7cb803acb7e941a699db08b91b89e1b41630d4e3b683c0aad9d85bb0b")),
                  borderRadius: BorderRadius.circular(13)),
              height: 250,
              width: double.infinity,
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              title: Text(
                "Family",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "Contact with your family",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              trailing: Card(
                  elevation: 3.1,
                  child: Icon(Icons.star_border_purple500_sharp)),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?size=338&ext=jpg"),
                      ),
                      title: Text("Dr. John Doe"),
                      subtitle: Text("Family Doctor"),
                      trailing: Icon(Icons.call),
                    ),
                    Divider(
                      height: 1,
                      indent: 20,
                      endIndent: 20,
                    )
                  ],
                );
              },
            )
          ],
        ));
  }
}
