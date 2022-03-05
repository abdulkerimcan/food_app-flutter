import 'package:flutter/material.dart';

import 'Food.dart';

class Detail extends StatefulWidget {
  Food food;

  Detail(this.food);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("${widget.food.name}"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                    radius: 150.0,
                    backgroundImage: AssetImage("images/${widget.food.img}")),
                Text("${widget.food.price} \u{20BA}",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                    child: Text("Order it"),
                    onPressed: () {
                      print("${widget.food.name} is ordered!");
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
