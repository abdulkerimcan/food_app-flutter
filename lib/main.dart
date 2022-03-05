import 'package:flutter/material.dart';
import 'package:food_app/Detail.dart';

import 'Food.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<Food>> getFood() async {
    var foodList = <Food>[];

    var f1 = Food(1, "Kebab", "kebab.jpg", 25.0);
    var f2 = Food(2, "Pizza", "pizza.jpg", 30.0);
    var f3 = Food(3, "Hamburger", "hamburger.jpg", 33.0);
    var f4 = Food(4, "Spagetti", "spagetti.jpg", 22.0);
    var f5 = Food(5, "Sushi", "sushi.jpeg", 25.0);
    var f6 = Food(6, "Baklava", "baklava.jpg", 20.0);
    var f7 = Food(7, "Kola", "kola.jpg", 10.0);
    var f8 = Food(8, "Fanta", "fanta.jpg", 9.0);
    var f9 = Food(9, "Ayran", "ayran.jpg", 5.0);

    foodList.add(f1);
    foodList.add(f2);
    foodList.add(f3);
    foodList.add(f4);
    foodList.add(f5);
    foodList.add(f6);
    foodList.add(f7);
    foodList.add(f8);
    foodList.add(f9);

    return foodList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foods"),
      ),
      body: FutureBuilder<List<Food>>(
        future: getFood(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var foodList = snapshot.data;
            return ListView.builder(
              itemCount: foodList!.length,
              itemBuilder: (context, index) {
                var food = foodList[index];

                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Detail(food)));
                  },
                  child: Card(
                    elevation: 10.0,
                    child: Row(
                      children: [
                        CircleAvatar(
                            radius: 50.0,
                            backgroundImage: AssetImage("images/${food.img}")),
                        SizedBox(
                          height: 150,
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${food.name}",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 50,
                                ),
                                Text("${food.price} \u{20BA}",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 19)),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.blueAccent,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return Center();
          }
        },
      ),
    );
  }
}
