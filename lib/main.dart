import 'package:flutter/material.dart';

void main() => runApp(Currency());

class Currency extends StatefulWidget {
  Currency({Key? key}) : super(key: key);

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  double result = 0;
  int selected = 0;
  List<double> numbers = [0, 0, 0, 0];
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Calculations"),
          ),
          body: Column(
            children: [
              TextField(
                  controller: _controller1, keyboardType: TextInputType.number),
              TextField(
                  controller: _controller2, keyboardType: TextInputType.number),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                    numbers[0] = (double.parse(_controller1.value.text) +
                        double.parse(_controller2.value.text));
                    numbers[1] = (double.parse(_controller1.value.text) -
                        double.parse(_controller2.value.text));
                    numbers[2] = (double.parse(_controller1.value.text) *
                        double.parse(_controller2.value.text));
                    numbers[3] = (double.parse(_controller1.value.text) /
                        double.parse(_controller2.value.text));
                    print(numbers);
                  },
                  child: Text("Calculate")),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selected = 0;
                      });
                    },
                    child: Text("+"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            selected == 0 ? Colors.blue : Colors.grey[400]))),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selected = 1;
                        print(selected);
                      });
                    },
                    child: Text("-"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            selected == 1 ? Colors.blue : Colors.grey[400]))),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selected = 2;
                      });
                    },
                    child: Text("*"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            selected == 2 ? Colors.blue : Colors.grey[400]))),
                SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selected = 3;
                      });
                    },
                    child: Text("/"),
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            selected == 3 ? Colors.blue : Colors.grey[400]))),
              ]),
              Text("\n${numbers[selected]} ", style: TextStyle(fontSize: 20)),
              // Visibility(
              //     visible: selected == 1,
              //     child: Text("\nSubtraction: ${numbers[1]} ",
              //         style: TextStyle(fontSize: 20))),
              // Visibility(
              //     visible: selected == 2,
              //     child: Text("\nMultiplication: ${numbers[2]} ",
              //         style: TextStyle(fontSize: 20))),
              // Visibility(
              //     visible: selected == 3,
              //     child: Text("\nDivision: ${numbers[3]} ",
              //         style: TextStyle(fontSize: 20))),
            ],
          )),
    );
  }
}
//"\nSubtraction: ${numbers[1]}"
//
