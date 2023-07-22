import 'package:flutter/material.dart';

class cmtofeet extends StatefulWidget {
  @override
  _cmtofeetState createState() => _cmtofeetState();
}

class _cmtofeetState extends State<cmtofeet> {
  bool isCmToFeet = true; // Initial toggle switch state
  double heightInCm = 0;
  double heightInFeet = 0;

  void convertHeight() {
    setState(() {
      if (isCmToFeet) {
        heightInFeet =
            heightInCm * 0.0328084; // Conversion formula from cm to feet
      } else {
        heightInCm = heightInFeet * 30.48; // Conversion formula from feet to cm
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Height Converter'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('Convert Height'),
              SizedBox(height: 16.0),
              Text('Centimeters to Feet', style: TextStyle(fontSize: 18.0)),
              Switch(
                value: isCmToFeet,
                onChanged: (value) {
                  setState(() {
                    isCmToFeet = value;
                    convertHeight();
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    if (isCmToFeet) {
                      heightInCm = double.tryParse(value) ?? 0;
                    } else {
                      heightInFeet = double.tryParse(value) ?? 0;
                    }
                    convertHeight();
                  });
                },
                decoration: InputDecoration(
                  labelText: isCmToFeet ? 'Centimeters' : 'Feet',
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                isCmToFeet
                    ? 'Height in Feet: $heightInFeet'
                    : 'Height in Centimeters: $heightInCm',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
