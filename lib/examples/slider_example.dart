import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({Key? key}) : super(key: key);

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {
  double _value = 1.0;
  var rangeSliderValues = const RangeValues(2.0, 8.0);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Slider(
                min: 0,
                divisions: 10,
                max: 100,
                label: "$_value",
                value: _value,
                onChanged: (double value) => setState(() => _value = value),
              ),
              CupertinoSlider(
                min: 0,
                divisions: 10,
                max: 100,
                value: _value,
                onChanged: (double value) => setState(() => _value = value),
              ),
              RangeSlider(
                max: 10.0,
                min: 0.0,
                divisions: 10,
                labels: RangeLabels(
                  rangeSliderValues.start.toString(),
                  rangeSliderValues.end.toString(),
                ),
                values: rangeSliderValues,
                onChanged: (values) =>
                    setState(() => rangeSliderValues = values),
              ),
              Slider.adaptive(
                value: _value,
                min: 0,
                divisions: 10,
                max: 100,
                onChanged: (double value) => setState(() => _value = value),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
