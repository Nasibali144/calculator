import 'package:calculator/views/button_view.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String expression = "14 - ";

  void onAC() {
    expression = "0";
    setState(() {});
  }

  void onDelete() {
    if(expression.length == 1) {
      expression = "0";
    } else {
      expression = expression.substring(0, expression.length - 1);
    }
    setState(() {});
  }

  void onZero() {
    if(!(expression.length == 1 && expression == "0" || expression.endsWith(" "))) {
      expression += "0";
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // #view console
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.bottomRight,
              color: Colors.grey.shade900,
              child: Text(
                expression,
                style: const TextStyle(
                  fontSize: 65,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // #buttons
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                // #one
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ButtonView(action: onAC, title: "AC",),
                    ButtonView(action: onDelete, icon: Icons.backspace_outlined,),
                    ButtonView(action: (){}, title: "%",),
                    ButtonView(action: (){}, title: "/",),
                  ],
                ),

                // #two
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ButtonView(action: (){}, title: "7", color: Colors.black),
                    ButtonView(action: (){}, title: "8", color: Colors.black),
                    ButtonView(action: (){}, title: "9", color: Colors.black),
                    ButtonView(action: (){}, title: "*"),
                  ],
                ),

                // #three
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ButtonView(action: (){}, title: "4", color: Colors.black),
                    ButtonView(action: (){}, title: "5", color: Colors.black),
                    ButtonView(action: (){}, title: "6", color: Colors.black),
                    ButtonView(action: (){}, title: "-"),
                  ],
                ),

                // #four
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ButtonView(action: (){}, title: "1", color: Colors.black),
                    ButtonView(action: (){}, title: "2", color: Colors.black),
                    ButtonView(action: (){}, title: "3", color: Colors.black),
                    ButtonView(action: (){}, title: "+"),
                  ],
                ),

                // #five
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ButtonView(action: (){}, title: "",),
                    ButtonView(action: onZero, title: "0", color: Colors.black),
                    ButtonView(action: (){}, title: ",", color: Colors.black),
                    ButtonView(action: (){}, title: "=",),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
