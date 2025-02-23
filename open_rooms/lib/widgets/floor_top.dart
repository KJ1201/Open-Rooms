import 'package:flutter/material.dart';
import 'package:open_rooms/utils/app_pallete.dart';

class FloorTop extends StatefulWidget {
  const FloorTop(
      {super.key, required this.text1, required this.text2, required this.add});

  final String text1;
  final String text2;
  final List<Widget> add;

  @override
  State<FloorTop> createState() => _FloorTopState();
}

class _FloorTopState extends State<FloorTop> {
  final List<String> items = [
    "09.30 to 10.20",
    '10.20 to 11.10',
    '11.10 to 12.00',
    '12.00 to 13.15'
  ];
  late String valueChoose = items.first;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.text1,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 25,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 05),
                    Row(
                      children: [
                        Text(
                          widget.text2,
                          style: TextStyle(
                              color: Pallete.homeColor,
                              fontSize: 40,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 60),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          // margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                              border: Border.all(color: Pallete.secondaryColor),
                              borderRadius: BorderRadius.circular(20)),
                          child: DropdownButton<String>(
                            items: items.map((String valueItem) {
                              return DropdownMenuItem<String>(
                                value: valueItem,
                                child: Text(
                                  valueItem,
                                ),
                              );
                            }).toList(),
                            value: valueChoose,
                            onChanged: (String? newValue) {
                              setState(() {
                                valueChoose = newValue!;
                              });
                            },
                            dropdownColor: Pallete.gradient1,
                            underline: Container(),
                            icon: Icon(Icons.arrow_drop_down_outlined),
                            iconSize: 20,
                            style: TextStyle(
                                fontSize: 18, color: Pallete.textColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 05),
                  ],
                ),
              ),
              ...widget.add,
            ]),
      ),
    );
  }
}
