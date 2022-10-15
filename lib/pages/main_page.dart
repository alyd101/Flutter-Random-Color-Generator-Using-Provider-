import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_color_generator/providers/random_color_provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Color randomColor = Provider.of<RandomColor>(context).randColor;
    return Scaffold(
      backgroundColor: randomColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Color generated (A,R,G,B): (${randomColor.alpha}, ${randomColor.red}, ${randomColor.green}, ${randomColor.blue})",
              style: const TextStyle(
                  color: Color.fromARGB(255, 29, 28, 28),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const Padding(padding: EdgeInsets.only(top: 50)),
            SizedBox(
              height: 50,
              width: 200,
              child: InkWell(
                onTap: () {
                  Provider.of<RandomColor>(context, listen: false)
                      .getRandomColor();
                },
                child: Card(
                  child: Center(child: Text("Generate Random Color")),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
