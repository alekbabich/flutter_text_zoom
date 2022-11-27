import 'package:flutter/material.dart';

void main() {
  runApp(const ZoomText());
}

class ZoomText extends StatefulWidget {
  const ZoomText({super.key});

  @override
  State<ZoomText> createState() => _ZoomTextState();
}

class _ZoomTextState extends State<ZoomText> {
  double _fontSize = 40;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: TextField(
                  textInputAction: TextInputAction.done,
                  style: TextStyle(fontSize: _fontSize),
                  maxLines: null,
                ),
              ),
              Slider(
                  value: _fontSize,
                  onChanged: (newSize) {
                    setState(() => _fontSize = newSize);
                  },
                  min: 30,
                  max: 200)
            ],
          ),
        ),
      ),
    );
  }
}
