# Food App 

A food ordering app.

## About The Project

In this project, the food are shown in a list. When clicking on the food ,a detailed page of the food is shown. <br>
I use ListView.builder with FutureBuilder. <br>
If the data we have taken is blank, it will show a blank screen.<br>
I created a class called Food and kept the features(img url,name,price) of the food in it. <br>

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

![image](https://user-images.githubusercontent.com/79968953/156892871-5a822585-26db-4963-94bb-3a65f4399aef.png)
![image](https://user-images.githubusercontent.com/79968953/156892879-0e504fed-7be7-4da2-9c29-7ae938edc1b5.png)
