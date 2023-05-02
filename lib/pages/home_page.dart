import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listItem = [
    "assets/images/img_0.png",
    "assets/images/img_1.png",
    "assets/images/img_0.png",
    "assets/images/img_3.png",
    "assets/images/img_1.png",
    "assets/images/img_0.png",
    "assets/images/img_1.png",
    "assets/images/img_0.png",
    "assets/images/img_3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: const Text("BOO™ SHOP"),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: Colors.yellow.shade700,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text(
                  "8",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            //#header
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/img_0.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.3),
                      Colors.black.withOpacity(.3),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Lifestyle sale",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Shop now",
                          style: TextStyle(color: Colors.grey.shade700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children:
                _listItem.map((item) => itemList(item)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemList(String item) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        height: 150,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(item),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 35,
            ),
          ],
        ),
      ),
    );
  }
}
