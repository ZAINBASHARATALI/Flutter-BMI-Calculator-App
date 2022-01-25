import 'package:flutter/material.dart';
import 'Reusablecard.dart';
import 'twocontents.dart';
import 'kconstants.dart';
import 'buttons.dart';
import 'outputpage.dart';
import 'calculations.dart';
enum Gender { male, female }
int height = 12;
int weight = 45;
int age = 25;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecardcolor = kcardcolor;
  Color femalecardcolor = kinactive;
  Gender selectedgender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Row(children: [
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedgender = Gender.male;
                  });
                },
                clor: selectedgender == Gender.male ? kcardcolor : kinactive,
                childcard: TwoContents(
                  iecon: kmalegender,
                  gender: Text(
                    'Male',
                    style: kstylo,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedgender = Gender.female;
                  });
                },
                clor: selectedgender == Gender.female ? kcardcolor : kinactive,
                childcard: TwoContents(
                  iecon: kfemalegender,
                  gender: Text(
                    'Female',
                    style: kstylo,
                  ),
                ),
              ),
            ),
          ]),
        ),
        Expanded(
          child: ReusableCard(
            clor: kcardcolor,
            childcard: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Height',
                  style: kstylo,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kbigstylo),
                      Text(
                        'inch',
                        style: TextStyle(fontSize: 15),
                      ),
                    ]),
                Slider(
                  activeColor: kbotomcardcolor,
                  inactiveColor: Colors.white70,
                  value: height.toDouble(),
                  min: 12.0,
                  max: 120.0,
                  onChanged: (double newvalue) {
                    setState(() {
                      height = newvalue.round();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(children: [
            Expanded(
              child: ReusableCard(
                clor: kcardcolor,
                childcard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Weight',
                      style: kstylo,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            weight.toString(),
                            style: kbigstylo,
                          ),
                          Text(
                            'kg',
                            style: TextStyle(fontSize: 15),
                          ),
                        ]),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      MyButton(
                        icn: Icon(
                          Icons.remove,
                          size: 35,
                          color: Colors.white70,
                        ),
                        Onpressing: () {
                          setState(() {
                            weight--;
                          });
                        },
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      MyButton(
                        icn: Icon(
                          Icons.add,
                          size: 35,
                          color: Colors.white70,
                        ),
                        Onpressing: () {
                          setState(() {
                            weight++;
                          });
                        },
                      ),
                    ]),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                clor: kcardcolor,
                childcard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Age',
                      style: kstylo,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            age.toString(),
                            style: kbigstylo,
                          ),
                          Text(
                            'yr',
                            style: TextStyle(fontSize: 15),
                          ),
                        ]),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      MyButton(
                        icn: Icon(
                          Icons.remove,
                          size: 35,
                          color: Colors.white70,
                        ),
                        Onpressing: () {
                          setState(() {
                            age--;
                          });
                        },
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      MyButton(
                        icn: Icon(
                          Icons.add,
                          size: 35,
                          color: Colors.white70,
                        ),
                        Onpressing: () {
                          setState(() {
                            age++;
                          });
                        },
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ]),
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
                'CALCULATE',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          onTap: ()
          {
            Calculations calc= Calculations(hight: height,weght: weight,Ag: age);
            Navigator.push(context, MaterialPageRoute(builder: (context)=> OutputPager(
                Bmi: calc.Ans(),Info:calc.info(),Suggest:calc.suggest(),
            )));
          },
        ),
      ]),
    );
  }
}
