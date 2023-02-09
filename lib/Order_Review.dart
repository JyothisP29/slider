import 'package:flutter/material.dart';
import 'package:slider/Order_Complete.dart';

class Order_Review extends StatefulWidget {
  const Order_Review({Key? key}) : super(key: key);

  @override
  State<Order_Review> createState() => _Order_ReviewState();
}

class _Order_ReviewState extends State<Order_Review> {
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController(viewportFraction: 0.25);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: InkWell(
                    child: Image.asset(
                      'assets/back.png',
                      width: 30,
                      height: 30,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    }),
              ),
              const Text('ORDER REVIEW'),
              const Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Icon(Icons.more_horiz),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  "Products",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_drop_down_circle_outlined)
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey.shade200,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/headset.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "BeoPlayH4 2...",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey.shade200,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/perfumespeaker.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "BeoSound1",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey.shade200,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset(
                            'assets/roundplate.png',
                            width: 30,
                            height: 30,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "BeoPlay",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey.shade200,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/Beosoundbalance.png',
                            width: 50.0,
                            height: 50.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "BeoSound Ba...",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20),
            child: Row(
              children: const <Widget>[
                Text(
                  "SHIPPING",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 12),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  child: Image.asset(
                    'assets/pin.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text("139 Haystreet, Perth",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ),
                const SizedBox(
                  width: 80,
                ),
                Container(
                  width: 70,
                  height: 27,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffC6AB59),
                  ),
                  child: const Center(
                      child: Text(
                    "Change",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  )),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              height: 90,
              width: 315,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Image.asset(
                      'assets/mycart.png',
                      width: 20,
                      height: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Text(
                              "Standard",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const <Widget>[Text("2-3 days")],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120.0),
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_downward),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: const <Widget>[
              SizedBox(
                width: 30,
              ),
              Text(
                "PAYMENT",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.black),
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                    child: Image.asset(
                      'assets/master.png',
                      width: 40,
                      height: 30,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text("* * * *",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("9000",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  Padding(
                    padding: const EdgeInsets.only(left: 88.0),
                    child: Container(
                      width: 70,
                      height: 27,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffC6AB59),
                      ),
                      child: const Center(
                          child: Text(
                        "Change",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      )),
                    ),
                  )
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Shipping",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                Text(
                  "Free",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Total:",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "9,800",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const Order_Complete()));
            },
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 100.0),
                  child: Text(
                    "PLACE ORDER",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 65.0),
                  child: Image.asset(
                    'assets/img.png',
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
