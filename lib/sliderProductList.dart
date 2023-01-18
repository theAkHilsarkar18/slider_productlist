import 'package:flutter/material.dart';

class SliderList extends StatefulWidget {
  const SliderList({Key? key}) : super(key: key);

  @override
  State<SliderList> createState() => _SliderListState();
}

class _SliderListState extends State<SliderList> {
  double selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Product Filter", style: TextStyle(letterSpacing: 2)),
        ),
        body: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 350),
                  child: Text("$selectedValue"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade200),
                    child: Slider(
                      value: selectedValue,
                      max: 1000,
                      divisions: 10,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                    ),
                  ),
                ),
                ProductList(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget ProductList() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Text(""),
          ],
        ),
      ),
    );
  }
}
