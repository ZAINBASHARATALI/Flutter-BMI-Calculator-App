// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'Reusablecard.dart';
import 'kconstants.dart';
import 'inputpage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class OutputPager extends StatelessWidget {
  OutputPager({@required this.Bmi,@required this.Info,@required this.Suggest});
  final double Bmi;
  final String Info;
  final String Suggest;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Center(
          child: Column(children: [
            Text(
              'Your Result',
              style: kbigstylo,
            ),
            Expanded(
              child: ReusableCard(
                clor: kcardcolor,
                childcard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      Info.toUpperCase(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.green
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      Bmi.toStringAsFixed(1),
                      style: kbigstylo,
                      textAlign: TextAlign.center,
                    ),
                    Icon(
                      FontAwesomeIcons.smileBeam,
                      size: 100,
                    ),
                    Text(
                    Suggest,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.green
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.only(bottom: 15),
                color: kbotomcardcolor,
                width: double.infinity,
                height: kbotomcardheight,
                margin: EdgeInsets.only(top: 8),
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> InputPage()));
              },
            ),
          ]),
        ),
      ),
    );
  }
}
