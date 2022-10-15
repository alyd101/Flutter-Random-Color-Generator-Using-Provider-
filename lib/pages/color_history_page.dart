import 'package:flutter/material.dart';

class ColorHistoryPage extends StatelessWidget {
  List<String> colorsGenerated;

  ColorHistoryPage({
    super.key,
    required this.colorsGenerated,
  });

  List<Widget> _getWidgets() {
    List<Widget> widgets = <Widget>[];

    for (String i in colorsGenerated) {
      widgets.add(SizedBox(
        height: 60,
        child: Card(
          child: Center(
            child: Text(i),
          ),
        ),
      ));
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.keyboard_return),
        ),
        title: const Center(
          child: Text("Color History"),
        ),
      ),
      body: Center(
        child: SizedBox(
          height: 600,
          width: 400,
          child: ListView(
            primary: false,
            children: _getWidgets()
          ),
        ),
      ),
    );
  }
}
