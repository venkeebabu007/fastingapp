import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ToggleSwitchFormFieldExample extends StatefulWidget {
  @override
  _ToggleSwitchFormFieldExampleState createState() =>
      _ToggleSwitchFormFieldExampleState();
}

class _ToggleSwitchFormFieldExampleState
    extends State<ToggleSwitchFormFieldExample> {
  bool isToggleOn = false;
  String onchangedvalue = '';
  String onchangedvaluetwo = '';
  TextEditingController textController = TextEditingController();
  TextEditingController textControllertwo = TextEditingController();
  @override
  void dispose() {
    textController.dispose();
    textControllertwo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toggle Switch Form Field Example'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SwitchListTile(
              title: Text('Enable Field'),
              value: isToggleOn,
              onChanged: (value) {
                setState(() {
                  isToggleOn = value;
                  //  textControllertwo.clear();
                  // textController.clear();
                });
              },
            ),
            SizedBox(height: 16.0),
            if (isToggleOn)
              TextFormField(
                  onTapOutside: (event) {
                    setState(() {});
                  },
                  controller: textController,
                  decoration: InputDecoration(
                    // border: InputBorder.none,
                    hintText:
                        onchangedvaluetwo == '' ? " " : "$onchangedvaluetwo",
                    hintStyle: TextStyle(color: Colors.green, fontSize: 30),
                  ),
                  onChanged: (value) {
                    setState(() {
                      onchangedvalue = value;
                      textControllertwo.clear();
                    });
                  }),
            if (!isToggleOn)
              TextFormField(
                  controller: textControllertwo,
                  decoration: InputDecoration(
                    // border: InputBorder.none,
                    hintText: onchangedvalue == '' ? "" : "$onchangedvalue",
                    hintStyle: TextStyle(color: Colors.green, fontSize: 30),
                  ),
                  onChanged: (value) {
                    setState(() {
                      onchangedvaluetwo = value;
                      textController.clear();
                    });
                  }),
            SizedBox(height: 16.0),
            /*ElevatedButton(
              onPressed: () {
                if (isToggleOn) {
                  String textFieldValue = textController.text;
                  print('Text Field Value: $textFieldValue');
                } else {
                  print('Text Field is disabled');
                }
              },
              child: Text('Submit'),
            ),*/
          ],
        ),
      ),
    );
  }
}
