import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3F4150),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Autonomus shopping cart",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red,
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ],
                    color: Colors.redAccent,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  "Wait untill scanning is done",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 55, 57, 70),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Item",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  Text(
                    "Qty.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  Text(
                    "Price",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, inex) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 55, 57, 70),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/chipsy.png', width: 50),
                        SizedBox(width: 20),
                        Flexible(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 80),
                            child: Text(
                              "chipsy cheese, 80 gm limited edition",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "3",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),

                        Text(
                          "25 L.E.",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 55, 57, 70),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "7",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "450 L.E.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80, bottom: 30),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Back To parcking Spot",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.sizeOf(context).width * 0.8, 50),
                  backgroundColor: Color(0xFFC45B5B),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
