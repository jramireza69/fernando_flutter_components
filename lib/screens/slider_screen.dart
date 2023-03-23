import 'package:fl_component/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('slider y checks '),
        ),
        body: Column(
          children: [
            Slider(
                min: 50,
                max: 400,
                activeColor: AppTheme.primary,
                divisions: 10,
                value: _sliderValue,
                onChanged: (value) {
                  _sliderValue = value;
                  setState(() {});
                }),
            Image(
              image: NetworkImage(
                  'https://img2.freepng.es/20180421/zve/kisspng-depiction-of-jesus-christ-the-king-desktop-wallpap-5adb970753a219.0713701515243404873426.jpg'),
              fit: BoxFit.contain,
              width: _sliderValue,
            )
          ],
        ));
  }
}
