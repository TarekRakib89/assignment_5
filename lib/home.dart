import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.green,
        leading: const Icon(
          Icons.add_business,
          color: Colors.white,
          size: 35,
        ),
        title: const Text(
          "Home",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          )
        ],
        elevation: 70,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "This is mod 5 Assignment",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text.rich(
              TextSpan(
                  text: "My",
                  style: TextStyle(
                    color: Colors.pink.shade800,
                    wordSpacing: 3,
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                  children: [
                    const WidgetSpan(
                        child: SizedBox(
                      width: 5,
                    )),
                    TextSpan(
                      text: "phone",
                      style: TextStyle(
                          color: Colors.lightBlueAccent.shade400, fontSize: 20),
                    ),
                    const WidgetSpan(
                        child: SizedBox(
                      width: 5,
                    )),
                    TextSpan(
                      text: "name",
                      style: TextStyle(
                          color: Colors.purpleAccent.shade700,
                          fontWeight: FontWeight.bold),
                    ),
                    const WidgetSpan(
                        child: SizedBox(
                      width: 5,
                    )),
                    const TextSpan(
                      text: "Your phone name",
                      style: TextStyle(
                        color: Color.fromARGB(255, 204, 151, 16),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
