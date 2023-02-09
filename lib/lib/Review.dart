import 'package:flutter/material.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 400,
              color: Colors.grey.shade200,
              child: Stack(
                children: [
                  Positioned(
                    top: 5,
                    left: 70,
                    child: Container(
                      color: Colors.grey.shade200,
                      width: 250,
                      height: 400,
                      child: Image.asset(
                        'assets/Beosoundbalance.png',
                        width: 800,
                        height: 800,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          child: Image.asset(
                            'assets/back.png',
                            width: 40,
                            height: 30,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        Image.asset(
                          'assets/cart.png',
                          width: 40,
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 60,
              height: 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, top: 20),
              child: Column(
                children: [
                  Row(
                    children: const <Widget>[
                      Text(
                        "CUSTOMER REVIEW",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: const [
                            Text(
                              "4,0",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 34),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 13,
                                  height: 13,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: const Color(0xffC6AB59)),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 13,
                                  height: 13,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: const Color(0xffC6AB59)),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 13,
                                  height: 13,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: const Color(0xffC6AB59)),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 13,
                                  height: 13,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: const Color(0xffC6AB59)),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 13,
                                  height: 13,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Colors.grey.shade300),
                                ),
                              ],
                            ),
                            const Text("1K Reviews"),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      const Text("5"),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 13,
                        height: 13,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color(0xffC6AB59)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                          width: 115,
                          height: 8,
                          color: const Color(0xff02C697)),
                      Container(
                          width: 100, height: 8, color: Colors.grey.shade200),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "55%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      const Text("4"),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 13,
                        height: 13,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color(0xffC6AB59)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                          width: 40, height: 8, color: const Color(0xff02C697)),
                      Container(
                          width: 175, height: 8, color: Colors.grey.shade200),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        " 16%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      const Text("3"),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 13,
                        height: 13,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color(0xffC6AB59)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                          width: 35, height: 8, color: const Color(0xff02C697)),
                      Container(
                          width: 180, height: 8, color: Colors.grey.shade200),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        " 14%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      const Text("2"),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 13,
                        height: 13,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color(0xffC6AB59)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                          width: 5, height: 8, color: const Color(0xff02C697)),
                      Container(
                          width: 210, height: 8, color: Colors.grey.shade200),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "   1%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      const Text("1"),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 13,
                        height: 13,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: const Color(0xffC6AB59)),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                          width: 35, height: 8, color: const Color(0xff02C697)),
                      Container(
                          width: 180, height: 8, color: Colors.grey.shade200),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        " 14%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        "1K Reviews",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40.0),
                        child: Container(
                          height: 40,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.shade200),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "New In",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                  Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: <Widget>[
                              Column(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.grey),
                                    child: Image.asset(
                                      'assets/Avatar.png',
                                      width: 90,
                                      height: 90,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Eleanor Summers",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 13,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 7,
                                          width: 7,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                            color: const Color(0xffC6AB59),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 7,
                                          width: 7,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                            color: const Color(0xffC6AB59),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 7,
                                          width: 7,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                            color: const Color(0xffC6AB59),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 7,
                                          width: 7,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                            color: const Color(0xffC6AB59),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 7,
                                          width: 7,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                              color: Colors.grey.shade300),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 55.0),
                                child: Text(
                                  "Today, 16:40",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: const [
                              Text("Great product, I love the sound of it :)"),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: <Widget>[
                              Column(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.grey),
                                    child: Image.asset(
                                      'assets/Avatar.png',
                                      width: 90,
                                      height: 90,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Eleanor Summers",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 13,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 7,
                                          width: 7,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                            color: const Color(0xffC6AB59),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 7,
                                          width: 7,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                            color: const Color(0xffC6AB59),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 7,
                                          width: 7,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                            color: const Color(0xffC6AB59),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 7,
                                          width: 7,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                            color: const Color(0xffC6AB59),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 7,
                                          width: 7,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                              color: Colors.grey.shade300),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 55.0),
                                child: Text(
                                  "Today, 16:40",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: const [
                              Text("Great product, I love the sound of it :)"),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: <Widget>[
                              Column(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.grey),
                                    child: Image.asset(
                                      'assets/Avatar.png',
                                      width: 90,
                                      height: 90,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Eleanor Summers",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 13,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 7,
                                          width: 7,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                            color: const Color(0xffC6AB59),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 7,
                                          width: 7,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                            color: const Color(0xffC6AB59),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 7,
                                          width: 7,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                            color: const Color(0xffC6AB59),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 7,
                                          width: 7,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                            color: const Color(0xffC6AB59),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 7,
                                          width: 7,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2),
                                              color: Colors.grey.shade300),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 55.0),
                                child: Text(
                                  "Today, 16:40",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: const [
                              Text("Great product, I love the sound of it :)"),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
