import 'package:flutter/material.dart';
import 'model.dart';
import 'animal_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  static List<String> animalName = [
    'Bear',
    'Camel',
    'Deer',
    'Fox',
    'Wolf',
    'Tiger',
    'Cat',
    'Dog',
  ];

  static List<String> animalImagePath = [
    'images/bear.png',
    'images/camel.png',
    'images/deer.png',
    'images/fox.png',
    'images/wolf.png',
    'images/tiger.png',
    'images/cat.png',
    'images/dog.png',
  ];

  static List<String> animalLocation = [
    'forest and mountain',
    'dessert',
    'forest',
    'snow mountain',
    'forest',
    'Amazon',
    'street and house',
    'house',
  ];

  final List<Animal> animalData = List.generate(
      animalLocation.length,
      (index) => Animal(
          animalName[index], animalImagePath[index], animalLocation[index]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.builder(
        itemCount: animalData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(animalData[index].name),
              leading: SizedBox(
                width: 50,
                height: 50,
                child: Image.asset(animalData[index].imgPath),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AnimalPage(
                          animal: animalData[index],
                        )));
                debugPrint(animalData[index].name);
              },
            ),
          );
        },
      ),
    );
  }
}
