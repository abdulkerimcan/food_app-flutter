# Food App 

A food ordering app.

## About The Project

In this project, the food are shown in a list. When clicking on the food ,a detailed page of the food is shown. 
<br> <br>
![image](https://user-images.githubusercontent.com/79968953/156892871-5a822585-26db-4963-94bb-3a65f4399aef.png) <br>
I use ListView.builder with FutureBuilder. <br>
```dart
FutureBuilder<List<Food>>(
        future: getFood(),
        builder: (context, snapshot) {
        if (snapshot.hasData) {
            var foodList = snapshot.data;
            return ListView.builder(
                .
                .
                .
                .
                .
                .
        }
```

If the data we have taken is blank, it will show a blank screen.<br>
![image](https://user-images.githubusercontent.com/79968953/156892879-0e504fed-7be7-4da2-9c29-7ae938edc1b5.png) <br>
 <br> <br>
I created a class called Food and kept the features(img url,name,price) of the food in it. <br>

```dart
class Food {
  int id;
  String img,name;
  double price;

  Food(this.id, this.name, this.img, this.price);
}
```


in order to retrieve the data asynchronously, I have created a Future method as follows.
```dart

Future<List<Food>> getFood() async {
    var foodList = <Food>[];
    .
    .
    .
    .
    .
    .
    .
    return foodList;
  }
```



