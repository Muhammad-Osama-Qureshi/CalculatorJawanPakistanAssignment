import 'package:flutter/material.dart';

class MyCalculator extends StatefulWidget {
  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  int firstnum;

  int secondnum;

  String texttodisplay = "";

  String res;

  String operator;

  void btnclicked(String btnval) {
    if (btnval == "c") {
      texttodisplay = "";
      firstnum = 0;
      secondnum = 0;
      res = "";
    } else if (btnval == "+" ||
        btnval == "-" ||
        btnval == "x" ||
        btnval == "/") {
      firstnum = int.parse(texttodisplay);
      res = "";
      operator = btnval;
    } else if (btnval == "=") {
      secondnum = int.parse(texttodisplay);
      if (operator == "+") {
        res = (firstnum + secondnum).toString();
      }
      if (operator == "-") {
        res = (firstnum - secondnum).toString();
      }
      if (operator == "x") {
        res = (firstnum * secondnum).toString();
      }
      if (operator == "/") {
        res = (firstnum / secondnum).toString();
      }
    } else {
      res = int.parse(texttodisplay + btnval).toString();
    }
    setState(() {
      texttodisplay = res;
    });
  }

  Widget custombutton(String btnval) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black)),
          onPressed: () => btnclicked(btnval),
          child: Text(
            "$btnval",
            style: TextStyle(fontSize: 25.0),
          )),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
              child: Text(
            "Calculator",
            style: TextStyle(fontSize: 30),
          ))),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  "$texttodisplay",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w600),
                ),
              )),
              Row(
                children: [
                  custombutton("9"),
                  custombutton("8"),
                  custombutton("7"),
                  custombutton("+"),
                ],
              ),
              Row(
                children: [
                  custombutton("6"),
                  custombutton("5"),
                  custombutton("4"),
                  custombutton("-"),
                ],
              ),
              Row(
                children: [
                  custombutton("3"),
                  custombutton("2"),
                  custombutton("1"),
                  custombutton("x"),
                ],
              ),
              Row(
                children: [
                  custombutton("0"),
                  custombutton("c"),
                  custombutton("="),
                  custombutton("/"),
                ],
              ),

              //   Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text("AC"),
              //       ),
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text("√x"),
              //       ),
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text("%"),
              //       ),
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text("/"),
              //       ),
              //     ],
              //   ),
              //   SizedBox(height: 10),
              //   Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text("7"),
              //       ),
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text("8"),
              //       ),
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text("9"),
              //       ),
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text("x"),
              //       ),
              //     ],
              //   ),
              //   SizedBox(height: 10),
              //   Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text("4"),
              //       ),
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text("5"),
              //       ),
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text("6"),
              //       ),
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text("-"),
              //       ),
              //     ],
              //   ),
              //   SizedBox(height: 10),
              //   Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text("1"),
              //       ),
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text("2"),
              //       ),
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text("3"),
              //       ),
              //       ElevatedButton(onPressed: () {}, child: Text("+")),
              //     ],
              //   ),
              //   SizedBox(height: 10),
              //   Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text("0"),
              //       ),
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text("."),
              //       ),
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text("+/-"),
              //       ),
              //       ElevatedButton(
              //         onPressed: () {},
              //         child: Text("="),
              //       ),
              //     ],
              //   ),
              //   SizedBox(height: 10),
              //
            ],
          ),
        ),
      ),
    );
  }
}
