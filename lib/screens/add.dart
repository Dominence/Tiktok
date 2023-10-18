import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Add extends StatefulWidget {
  Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  List<String> listdogs = ['Zaggy', 'Snoppy', 'Chelsea', 'Charlie'];
  bool ischanged = false;
  String level = 'Begineer';
  String SelectedDate = 'ChooseDate';
  String selected = 'Zaggy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 1,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              "Radio buttons",
              style: TextStyle(fontSize: 22),
            )),
            Radio(
              activeColor: Colors.green,
              toggleable: false,
              value: 'Begineer',
              groupValue: level,
              onChanged: (value) {
                setState(() {
                  level = value.toString();
                });
              },
            ),
            Radio(
              activeColor: Colors.green,
              toggleable: true,
              value: 'Advanced',
              groupValue: level,
              onChanged: (value) {
                setState(() {
                  level = value.toString();
                });
              },
            ),
            Switch(
              activeColor: Colors.green,
              thumbColor: MaterialStatePropertyAll(Colors.grey),
              splashRadius: 9,
              value: ischanged,
              onChanged: (value) {
                setState(() {
                  ischanged = !ischanged;
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(20200),
                  ).then((value) {
                    if (value != null) {
                      setState(() {
                        SelectedDate =
                            DateFormat("EEEE/dd/MMMM/yyyy").format(value!);
                      });
                      print(
                          'value ${DateFormat("EEEE/dd/MMMM/yyyy").format(value!)}');
                    }
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.date_range_outlined),
                    Text("$SelectedDate")
                  ],
                )),
            DropdownButton(
              hint: Text("Preview"),
              value: selected,
              items: listdogs
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Row(children: [Text("$e")]),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selected = value!;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
