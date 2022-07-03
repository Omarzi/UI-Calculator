import 'package:calculator/calculatro_brain.dart';
import 'package:calculator/constants.dart';
import 'package:calculator/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    String result = "0";

    // the brain for our calculator
    CalculatorBrain calc = CalculatorBrain();

    return Scaffold(
      backgroundColor: Color(0xFFEDEBEC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 60,
                  ),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 300,
                      maxHeight: 70,
                    ),
                    child: Text(
                      result,
                      style: kResultTextStyle,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    bottom: 30,
                  ),
                  child: Text(
                    calc.resultOperationText,
                    style: kOperationTextStyle,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // create a round button
                    RoundeButton(
                      buttonText: "AC",
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("AC")!;
                        });
                      },
                    ),
                    RoundeButton(
                      buttonText: "+/-",
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("+/-")!;
                        });
                      },
                    ),
                    RoundeButton(
                      buttonText: "%",
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("%")!;
                        });
                      },
                    ),
                    RoundeButton(
                      buttonText: "+",
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      colorText: kOrangeColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("AC")!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // create a round button
                    RoundeButton(
                      buttonText: "7",
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("7")!;
                        });
                      },
                    ),
                    RoundeButton(
                      buttonText: "8",
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("8")!;
                        });
                      },
                    ),
                    RoundeButton(
                      buttonText: "9",
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("9")!;
                        });
                      },
                    ),
                    RoundeButton(
                      buttonText: "x",
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      colorText: kOrangeColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("x")!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // create a round button
                    RoundeButton(
                      buttonText: "4",
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("4")!;
                        });
                      },
                    ),
                    RoundeButton(
                      buttonText: "5",
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("5")!;
                        });
                      },
                    ),
                    RoundeButton(
                      buttonText: "6",
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("6")!;
                        });
                      },
                    ),
                    RoundeButton(
                      buttonText: "-",
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      colorText: kOrangeColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("-")!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // create a round button
                    RoundeButton(
                      buttonText: "1",
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("1")!;
                        });
                      },
                    ),
                    RoundeButton(
                      buttonText: "2",
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("2")!;
                        });
                      },
                    ),
                    RoundeButton(
                      buttonText: "3",
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("3")!;
                        });
                      },
                    ),
                    RoundeButton(
                      buttonText: "+",
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      colorText: kOrangeColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("+")!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // create a round button
                    RoundeButton(
                      buttonText: "0",
                      buttonBoxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(40.0)),
                      buttonWidth: 2.9,
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("0")!;
                        });
                      },
                    ),
                    RoundeButton(
                      buttonText: ".",
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      colorText: kBlackColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed(".")!;
                        });
                      },
                    ),
                    RoundeButton(
                      buttonText: "=",
                      buttonBoxShape: NeumorphicBoxShape.circle(),
                      buttonWidth: 8,
                      colorText: kOrangeColorText,
                      onPressed: () {
                        setState(() {
                          result = calc.buttonPressed("=")!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
