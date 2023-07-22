import 'package:fastingapp/constants/custom_text_style.dart';
import 'package:fastingapp/homepages/eighteen.dart';
import 'package:fastingapp/homepages/eightypercent.dart';
import 'package:fastingapp/homepages/looseyourweight.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class yourexlcusive extends StatefulWidget {
  const yourexlcusive({super.key});

  @override
  State<yourexlcusive> createState() => _yourexlcusiveState();
}

class _yourexlcusiveState extends State<yourexlcusive> {
  final today = DateTime.now();

  String nexmonthname = DateFormat('MMMM')
      .format(DateTime.now().add(const Duration(days: 30)))
      .toString();
  String secomonthname = DateFormat('MMMM')
      .format(DateTime.now().add(const Duration(days: 60)))
      .toString();

  String thirdmonthname = DateFormat('MMMM')
      .format(DateTime.now().add(const Duration(days: 90)))
      .toString();

  String _month = DateFormat('MMMM').format(new DateTime.now()).toString();

  List<_WeightData>? _chartData;
  TooltipBehavior? _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
    print(_month);
    print(nexmonthname);
    print(thirdmonthname);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Untitled-1.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: LayoutBuilder(
          builder: (context, cons) {
            return ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: cons.maxHeight,
              ),
              child: SingleChildScrollView(
                child: InkWell(
                  onTap: () => Get.to(eightypercent()),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 10,
                          right: 10,
                          bottom: 20,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    'Your',
                                    style: titlecustomTextStyle(),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Center(
                                  child: Text(
                                    'Exclusive',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 49, 29, 130),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 30,
                                      fontStyle: FontStyle.italic,
                                      fontFamily: 'Segoe UI Italic',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Center(
                                  child: Text(
                                    'plan',
                                    style: titlecustomTextStyle(),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Text(
                                    'has been generated',
                                    style: titlecustomTextStyle(),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),

                      //login screen header
                      Container(
                        height: height * 0.15,
                        width: width * 0.55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromARGB(255, 40, 139, 61),
                                width: 4),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.monitor_weight,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '-7.0 kg',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 21, 94, 23),
                                          fontWeight: FontWeight.w900,
                                          fontSize: 19),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '65 kg',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 21, 94, 23),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 19),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'to',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 21, 94, 23),
                                          fontWeight: FontWeight.w900,
                                          fontSize: 18),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '58.0 kg',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 21, 94, 23),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 19),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        // height: height * 0.33,
                        child: SfCartesianChart(
                          //title: ChartTitle(text: 'Yearly Weight analysis'),
                          //  legend: Legend(isVisible: true),
                          primaryXAxis: CategoryAxis(
                            labelAlignment: LabelAlignment.start,
                            maximumLabels: 5,
                            labelStyle: TextStyle(fontSize: 8),
                            axisLine: AxisLine(
                              width: 5,
                              color: Colors.blue,
                            ),
                          ),

                          tooltipBehavior: _tooltipBehavior,
                          series: <ChartSeries<_WeightData, String>>[
                            LineSeries<_WeightData, String>(
                                name: 'weihgt',
                                dataSource: _chartData!,
                                xValueMapper: (_WeightData Weight, _) =>
                                    Weight.month,
                                yValueMapper: (_WeightData Weight, _) =>
                                    Weight.Weight,

                                // xValueMapper: (WeightData Weight, _) =>
                                //  Weight.month,
                                //  yValueMapper: (WeightData Weight, _) =>
                                //   Weight.Weight,
                                dataLabelSettings:
                                    DataLabelSettings(isVisible: true),
                                enableTooltip: true)
                          ],
                          /* primaryXAxis: NumericAxis(
                            edgeLabelPlacement: EdgeLabelPlacement.shift,
                          ),*/
                          primaryYAxis: NumericAxis(
                            axisLine: AxisLine(width: 4, color: Colors.blue),

                            labelFormat: '{value}kg',
                            minimum: 5,
                            // numberFormat:
                            // NumberFormat.simpleCurrency(decimalDigits: 0)
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.check_circle_outline,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Reach your target : 58.0kg',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 17),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.check_circle_outline,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Build your dream body',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 17),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.check_circle_outline,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Being more active in daily life',
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 17),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 10,
                      ),

                      Container(
                        height: height * 0.17,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromARGB(255, 40, 139, 61),
                                width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Center(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Visible changes in',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '1 WEEK',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 21, 94, 23),
                                          fontWeight: FontWeight.w900,
                                          fontSize: 19),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                '-1.5kg',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 22),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'After',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 19),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'FIRST WEEK',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 21, 94, 23),
                                          fontWeight: FontWeight.w900,
                                          fontSize: 19),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      /*                                                                                                                                            InkWell(
                        onTap: () {
                          // Get.to(looseyourweight());
                        },
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 10, left: 20, right: 20),
                          child: Container(
                            width: 240,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color.fromARGB(255, 17, 108, 20),
                                Colors.green,
                                Color.fromARGB(255, 17, 108, 20),
                              ]),
                              //color: Colors.transparent,
                
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  "Next",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),*/
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  List<_WeightData> getChartData() {
    final List<_WeightData> chartData = [
      _WeightData(_month, 75),
      _WeightData(nexmonthname, 68),
      _WeightData(secomonthname, 64),
      _WeightData(thirdmonthname, 60),
    ];
    return chartData;
  }
}

/*class WeightData {
  WeightData(this.month, this.Weight);
  final double month;
  final double Weight;
}*/
class _WeightData {
  _WeightData(this.month, this.Weight);

  final String month;
  final double Weight;
}