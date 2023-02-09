import 'package:flutter/material.dart';

import 'SecondPage.dart';

class FirstOne extends StatefulWidget {
  const FirstOne({Key? key}) : super(key: key);

  @override
  State<FirstOne> createState() => _FirstOneState();
}

class _FirstOneState extends State<FirstOne> {
  late PageController _pageController;

  List images = [
    'assets/firstimage.png',
    'assets/firstimage.png',
    'assets/firstimage.png',
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
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 500,
            width: double.infinity,
            child: PageView.builder(
                itemCount: images.length,
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() {
                    activePage = page;
                  });
                },
                itemBuilder: (context, pagePosition) {
                  return Image.asset(
                    images[pagePosition],
                    fit: BoxFit.cover,
                  );
                }),
          ),
          SizedBox(
              height: 300,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: indicators(images.length, activePage)),
                    Column(
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.only(top: 58.0),
                          child: Text(
                            "Welcome to STStore!",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          "With long experience in the audio industry,",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "we created the best quality products",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 60),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xffC6AB59),
                            minimumSize: const Size(325, 50),
                            maximumSize: const Size(325, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => const SecondPage()));
                          },
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 100.0),
                                child: Text(
                                  "GET STARTED",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 65.0),
                                child: Image.asset(
                                  'assets/img.png',
                                  width: 40,
                                  height: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: currentIndex == index ? 20.0 : 9,
      height: 6,
      decoration: BoxDecoration(
          color:
              currentIndex == index ? const Color(0xffC6AB59) : Colors.black26,
          borderRadius: BorderRadius.circular(5.0)),
    );
  });
}
