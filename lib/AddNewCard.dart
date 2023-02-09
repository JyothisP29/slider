import 'package:flutter/material.dart';
import 'package:slider/Order_Review.dart';

class Add_New_Card extends StatefulWidget {
  const Add_New_Card({Key? key}) : super(key: key);

  @override
  State<Add_New_Card> createState() => _Add_New_CardState();
}

class _Add_New_CardState extends State<Add_New_Card> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    },
                  ),
                ),
                const Text(
                  'ADD NEW CARD',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Image.asset(
                    'assets/camera.png',
                    width: 30,
                    height: 30,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 310,
              height: 230,
              child: ClipRRect(
                child: Image.asset(
                  'assets/Bluecard.png',
                  width: 120,
                  height: 110,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Row(
                children: const [
                  Text(
                    "Card Holder",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Positioned(
                  left: 30,
                  top: 20,
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/person.png',
                      width: 40,
                      height: 30,
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 45,
                    margin: const EdgeInsets.fromLTRB(80, 10, 40, 0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Sajin Tamang',
                      ),
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              indent: 30,
              endIndent: 40,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Row(
                children: const [
                  Text(
                    "Card Number",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Positioned(
                  left: 30,
                  top: 20,
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/cardicon.png',
                      width: 45,
                      height: 25,
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 45,
                    margin: const EdgeInsets.fromLTRB(80, 10, 30, 0),
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: '5988 9942 6686 9000',
                      ),
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              indent: 30,
              endIndent: 40,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text(
                    "Expiry Date",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 115.0),
                  child: Text(
                    "CVV",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Stack(
                  children: [
                    Positioned(
                      left: 30,
                      top: 10,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/calander.png',
                          width: 45,
                          height: 25,
                        ),
                      ),
                    ),
                    Positioned(
                      child: SizedBox(
                        width: 200,
                        height: 50,
                        child: Container(
                          height: 45,
                          width: 70,
                          margin: const EdgeInsets.fromLTRB(80, 0, 40, 0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: '01/2022',
                            ),
                            onChanged: (value) {
                              setState(() {});
                            },
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                        top: 49,
                        left: 40,
                        child: SizedBox(
                          width: 135,
                          height: 3,
                          child: Divider(
                            thickness: 3,
                          ),
                        ))
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    Positioned(
                      left: 00,
                      top: 10,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/lock.png',
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ),
                    Positioned(
                      child: SizedBox(
                        width: 150,
                        height: 50,
                        child: Container(
                          height: 45,
                          width: 70,
                          margin: const EdgeInsets.fromLTRB(40, 0, 40, 0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: '000',
                            ),
                            onChanged: (value) {
                              setState(() {});
                            },
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                        top: 49,
                        child: SizedBox(
                          width: 135,
                          height: 3,
                          child: Divider(
                            thickness: 3,
                          ),
                        ))
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, top: 20),
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/checkbox.png',
                      width: 25,
                      height: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20),
                  child: Row(
                    children: const [
                      Text(
                        "Save to my Cards",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 130,
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
                    MaterialPageRoute(builder: (_) => const Order_Review()));
              },
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 95.0),
                    child: Text(
                      "ORDER REVIEW",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 75.0),
                    child: Image.asset(
                      'assets/img.png',
                      width: 20,
                      height: 30,
                    ),
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
