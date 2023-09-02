import 'package:flutter/material.dart';
import 'package:flutter_tutorial/controllers/index.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Controller c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        leading: Container(
            margin: const EdgeInsets.only(left: 10),
            child: CircleAvatar(
              child: Image.asset("assets/images/1.png"),
            )),
        title: Text("Hi, John",
            style: TextStyle(
                color: Colors.grey[700], fontWeight: FontWeight.w600)),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
          IconButton(
              onPressed: () => c.changeThemeMode(),
              icon: const Icon(Icons.dark_mode_outlined))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurple,
        child: const Icon(
          Icons.shopping_bag_outlined,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 60,
              child: Row(children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 12),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        )))
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.9,
              children: List.generate(
                  10,
                  (index) => Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/${index + 1}.png",
                              height: 100,
                              width: 100,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("Food Name"),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "\$ 5.00",
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )).toList(),
            )
          ],
        ),
      ),
    );
  }
}
