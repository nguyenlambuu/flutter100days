import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/help_icon_button.dart';

class Day57Slider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
        actions: [
          HelpIconButton(
              url: 'https://api.flutter.dev/flutter/material/Slider-class.html')
        ],
      ),
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  double _sliderValue = 1;

  RangeValues _rangeValue = RangeValues(1, 10);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal.withOpacity(_sliderValue / 10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "${_sliderValue.toInt()}",
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(
              height: 50,
            ),
            Text("Normal Slider"),
            Slider(
              value: _sliderValue,
              min: 1,
              max: 10,
              onChangeEnd: (value) =>
                  ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("You Release The Slider"),
                  duration: Duration(milliseconds: 500),
                ),
              ),
              onChangeStart: (value) =>
                  ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("You Touch The Slider"),
                  duration: Duration(milliseconds: 500),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            Text("iOS Slider"),
            CupertinoSlider(
                value: _sliderValue,
                min: 1,
                max: 10,
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                  });
                }),
            Text("Dynamic Slider (iOS/Android) with divisions and labels"),
            Slider.adaptive(
              value: _sliderValue,
              min: 1,
              max: 10,
              divisions: 10,
              label: "${_sliderValue.toInt()}",
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            Text(
              "${_rangeValue.start.toInt()} - ${_rangeValue.end.toInt()}",
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(height: 50),
            Text("Range Slider for two range values"),
            RangeSlider(
              values: _rangeValue,
              min: 1,
              max: 10,
              onChanged: (value) {
                setState(() {
                  _rangeValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
