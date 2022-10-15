import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_color_generator/providers/random_color_provider.dart';
import 'package:random_color_generator/pages/color_history_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> generatedColors = <String>[];
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
                  color: Color.fromARGB(255, 52, 49, 49),
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
                  generatedColors.add(
                      "(${randomColor.alpha}, ${randomColor.red}, ${randomColor.green}, ${randomColor.blue})");
    
                },
                child: const Card(
                  child: Center(child: Text("Generate Random Color")),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "View color history",
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ColorHistoryPage(colorsGenerated: generatedColors)));
        },
        child: Icon(Icons.history),
      ),
    );
  }
}
