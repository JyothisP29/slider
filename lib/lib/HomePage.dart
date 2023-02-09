import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activePage = 0;
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController(viewportFraction: 0.5);
    super.initState();
  }

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        drawer: Drawer(
          child: ListView(
            children: const [Text('hi...')],
          ),
        ),
        body: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          _globalKey.currentState?.openDrawer();
                        },
                        icon: const Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 10),
                          child: Icon(
                            Icons.menu,
                            size: 30,
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      "Browse by Categories",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          height: 250,
                          width: 200,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 60,
                                child: Container(
                                  width: 200,
                                  height: 190,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                              ),
                              Positioned(
                                bottom: 100,
                                child: ClipRRect(
                                  child: Image.asset(
                                    'assets/Beosoundbalance.png',
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 170,
                                  left: 63,
                                  child: Column(
                                    children: const [
                                      Text(
                                        "Speakers",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "100+ Products",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 250,
                          width: 200,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 60,
                                child: Container(
                                  width: 200,
                                  height: 190,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                              ),
                              Positioned(
                                bottom: 100,
                                child: ClipRRect(
                                  child: Image.asset(
                                    'assets/Beosoundbalance.png',
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 170,
                                  left: 63,
                                  child: Column(
                                    children: const [
                                      Text(
                                        "Speakers",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "100+ Products",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 250,
                          width: 200,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 60,
                                child: Container(
                                  width: 200,
                                  height: 190,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                              ),
                              Positioned(
                                bottom: 100,
                                child: ClipRRect(
                                  child: Image.asset(
                                    'assets/Beosoundbalance.png',
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 170,
                                  left: 63,
                                  child: Column(
                                    children: const [
                                      Text(
                                        "Speakers",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "100+ Products",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 250,
                          width: 200,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 60,
                                child: Container(
                                  width: 200,
                                  height: 190,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(30)),
                                ),
                              ),
                              Positioned(
                                bottom: 100,
                                child: ClipRRect(
                                  child: Image.asset(
                                    'assets/Beosoundbalance.png',
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 170,
                                  left: 63,
                                  child: Column(
                                    children: const [
                                      Text(
                                        "Speakers",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "100+ Products",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Recommended for you",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade200,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Image.asset(
                              'assets/perfumespeaker.png',
                              width: 120,
                              height: 120,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Beosound 1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("1,600"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade200,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Image.asset(
                              'assets/ups.png',
                              width: 120,
                              height: 120,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Beolit 17",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("550"),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade200,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Image.asset(
                              'assets/headset.png',
                              width: 120,
                              height: 120,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Beoplay H9 3r...",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("250"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade200,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Image.asset(
                              'assets/roundplate.png',
                              width: 120,
                              height: 120,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Beoplay A9",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("1,550"),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade200,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Image.asset(
                              'assets/ups.png',
                              width: 120,
                              height: 120,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Beosound 1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("550"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 150,
                      height: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade200,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Image.asset(
                              'assets/Beosoundbalance.png',
                              width: 120,
                              height: 120,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Beosound 1",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text("1,600"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
