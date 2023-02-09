import 'package:flutter/material.dart';
import 'package:slider/before_cart.dart';

class NinthPage extends StatefulWidget {
  const NinthPage({Key? key}) : super(key: key);

  @override
  State<NinthPage> createState() => _NinthPage();
}

late PageController _pageController;

class _NinthPage extends State<NinthPage> {
  List stacks = [
    Stack(),
    Stack(),
    Stack(),
  ];

  int activePage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: InkWell(
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/back.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                const Text(
                  "SPEAKERS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Image.asset(
                    'assets/Customize.png',
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 10),
              child: SizedBox(
                width: 400,
                height: 400,
                child: PageView.builder(
                    itemCount: stacks.length,
                    controller: _pageController,
                    onPageChanged: (page) {
                      setState(() {
                        activePage = page;
                      });
                    },
                    itemBuilder: (context, pagePosition) {
                      return InkWell(
                        child: Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 168.0, left: 0),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  width: 350,
                                  height: 240,
                                ),
                              ),
                            ),
                            ClipRRect(
                              child: Image.asset(
                                'assets/Beosoundbalance.png',
                                fit: BoxFit.cover,
                                width: 340,
                                height: 280,
                              ),
                            ),
                            Positioned(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 280.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const [
                                        Text(
                                          "Beosound Balance",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 24),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text("Innovative, wireless home speaker"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 30,
                              right: 150,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:
                                      indicators(stacks.length, activePage)),
                            ),
                          ],
                        ),
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25.0),
                                ),
                              ),
                              builder: (BuildContext context) {
                                return SingleChildScrollView(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    height: 620,
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          width: 50,
                                          height: 5,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.grey.shade200),
                                        ),
                                        Row(
                                          children: const <Widget>[
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 30.0, left: 30),
                                              child: Text(
                                                "Gender",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16),
                                              ),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 25.0),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                width: 100,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color:
                                                      const Color(0xffC6AB59),
                                                ),
                                                child: const Center(
                                                    child: Text(
                                                  "Men",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              Container(
                                                width: 100,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: Colors.grey.shade200,
                                                ),
                                                child: const Center(
                                                    child: Text(
                                                  "Women",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              Container(
                                                width: 100,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: Colors.grey.shade200,
                                                ),
                                                child: const Center(
                                                    child: Text(
                                                  "Both",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Divider(),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 30.0),
                                          child: Row(
                                            children: const [
                                              Text(
                                                "Price Rate",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 80,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 35.0),
                                          child: Row(
                                            children: <Widget>[
                                              Container(
                                                width: 150,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(13),
                                                  color: Colors.grey.shade200,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: const [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 15.0),
                                                      child: Text(
                                                        "Min",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 15.0),
                                                      child: Icon(Icons
                                                          .arrow_drop_down),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              Container(
                                                width: 150,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(13),
                                                  color: Colors.grey.shade200,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: const [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 15.0),
                                                      child: Text(
                                                        "Max",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 15.0),
                                                      child: Icon(Icons
                                                          .arrow_drop_down),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        const Divider(),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 30.0),
                                          child: Row(
                                            children: const [
                                              Text(
                                                "Color",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 18,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30.0, right: 30),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(7),
                                                  color:
                                                      const Color(0xffC6AB59),
                                                ),
                                                child: const Icon(
                                                  Icons.done,
                                                  size: 17,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 18,
                                              ),
                                              Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(7),
                                                  color: Colors.greenAccent,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 18,
                                              ),
                                              Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(7),
                                                  color: Colors.pinkAccent,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 18,
                                              ),
                                              Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(7),
                                                  color: Colors.blue,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 18,
                                              ),
                                              Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(7),
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 60,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 30.0),
                                          child: Row(
                                            children: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  primary:
                                                      const Color(0xffC6AB59),
                                                  minimumSize:
                                                      const Size(200, 50),
                                                  maximumSize:
                                                      const Size(200, 50),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.0),
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (_) =>
                                                              const BeforeCart()));
                                                },
                                                child: const Center(
                                                  child: Text(
                                                    "APPLY FILTERS (4)",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  primary:
                                                      const Color(0xffEEEEEE),
                                                  minimumSize:
                                                      const Size(110, 50),
                                                  maximumSize:
                                                      const Size(110, 50),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6.0),
                                                  ),
                                                ),
                                                onPressed: () {},
                                                child: const Center(
                                                  child: Text(
                                                    "RESET",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                      );
                    }),
              ),
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: 390,
                child: DefaultTabController(
                  length: 4,
                  child: Scaffold(
                      body: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0)),
                          child: const TabBar(
                            isScrollable: true,
                            indicatorColor: Colors.black,
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            tabs: [
                              Tab(
                                  child: Text(
                                'View all',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              Tab(
                                  child: Text(
                                'Portable',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              Tab(
                                  child: Text(
                                'Multiroom',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                              Tab(
                                  child: Text(
                                'Architecture',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                            ],
                          ),
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                            child: TabBarView(
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  Container(
                                    height: 130,
                                    width: 315,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.grey.shade200),
                                    child: Row(
                                      children: <Widget>[
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0, left: 10),
                                              child: ClipRRect(
                                                child: Image.asset(
                                                  'assets/perfumespeaker.png',
                                                  width: 100,
                                                  height: 100,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 25,
                                            ),
                                            const Text(
                                              "BeoSound 1",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                const Text(
                                                  "4.5",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 13),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                    height: 8,
                                                    width: 8,
                                                    color: const Color(
                                                        0xffC6AB59)),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                    height: 8,
                                                    width: 8,
                                                    color: const Color(
                                                        0xffC6AB59)),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                    height: 8,
                                                    width: 8,
                                                    color: const Color(
                                                        0xffC6AB59)),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                    height: 8,
                                                    width: 8,
                                                    color: const Color(
                                                        0xffC6AB59)),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                    height: 8,
                                                    width: 8,
                                                    color: Colors.grey),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Text(
                                              "1,600",
                                              style: TextStyle(fontSize: 13),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 130,
                                    width: 315,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.grey.shade200),
                                    child: Row(
                                      children: <Widget>[
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0, left: 10),
                                              child: ClipRRect(
                                                child: Image.asset(
                                                  'assets/roundplate.png',
                                                  width: 100,
                                                  height: 100,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 25,
                                            ),
                                            const Text(
                                              "BeoPlay A9",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                const Text(
                                                  "4.5",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 13),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                    height: 8,
                                                    width: 8,
                                                    color: const Color(
                                                        0xffC6AB59)),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                    height: 8,
                                                    width: 8,
                                                    color: const Color(
                                                        0xffC6AB59)),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                    height: 8,
                                                    width: 8,
                                                    color: const Color(
                                                        0xffC6AB59)),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                    height: 8,
                                                    width: 8,
                                                    color: const Color(
                                                        0xffC6AB59)),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                    height: 8,
                                                    width: 8,
                                                    color: Colors.grey),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Text(
                                              "1,600",
                                              style: TextStyle(fontSize: 13),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 130,
                                    width: 315,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.grey.shade200),
                                    child: Row(
                                      children: <Widget>[
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10.0, left: 10),
                                              child: ClipRRect(
                                                child: Image.asset(
                                                  'assets/roundplate.png',
                                                  width: 100,
                                                  height: 100,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const SizedBox(
                                              height: 25,
                                            ),
                                            const Text(
                                              "BeoSound 1",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                const Text(
                                                  "4.5",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 13),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                    height: 8,
                                                    width: 8,
                                                    color: const Color(
                                                        0xffC6AB59)),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                    height: 8,
                                                    width: 8,
                                                    color: const Color(
                                                        0xffC6AB59)),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                    height: 8,
                                                    width: 8,
                                                    color: const Color(
                                                        0xffC6AB59)),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                    height: 8,
                                                    width: 8,
                                                    color: const Color(
                                                        0xffC6AB59)),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Container(
                                                    height: 8,
                                                    width: 8,
                                                    color: Colors.grey),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Text(
                                              "1,600",
                                              style: TextStyle(fontSize: 13),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Center(
                              child: Text("Status Pages"),
                            ),
                            const Center(
                              child: Text('Calls Page'),
                            ),
                            const Center(
                              child: Text('Settings Page'),
                            )
                          ],
                        ))
                      ],
                    ),
                  )),
                ),
              ),
            ),
          ],
        ),
      )),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: FloatingActionButton(
          onPressed: () {},
          child: ClipRRect(
            child: Image.asset(
              'assets/bag.png',
              width: 50,
              height: 50,
            ),
          ),
          backgroundColor: const Color(0xffC6AB59),
        ),
      ),
    );
  }
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: currentIndex == index ? 25.0 : 8,
      height: 8,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.black : Colors.black26,
          borderRadius: BorderRadius.circular(5.0)),
    );
  });
}
