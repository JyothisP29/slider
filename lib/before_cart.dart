import 'package:flutter/material.dart';
import 'package:slider/Review.dart';

class BeforeCart extends StatefulWidget {
  const BeforeCart({Key? key}) : super(key: key);

  @override
  State<BeforeCart> createState() => _BeforeCartState();
}

class _BeforeCartState extends State<BeforeCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                const SizedBox(
                  width: 450,
                  height: 500,
                ),
                Container(
                  width: 450,
                  height: 420,
                  color: Colors.grey.shade200,
                ),
                Positioned(
                  top: 80,
                  left: 40,
                  child: SizedBox(
                    width: 150,
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text("Speakers"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "BeoSound",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        const Text(
                          "Balance",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text("From"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "1,600",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text("Available Colors"),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xffC6AB59)),
                              child: const Icon(
                                Icons.done,
                                size: 14,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.pinkAccent),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 25,
                  top: 120,
                  child: SizedBox(
                    width: 200,
                    height: 400,
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/Beosoundbalance.png',
                        fit: BoxFit.cover,
                        width: 80,
                        height: 80,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/back.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ClipRRect(
                        child: Image.asset(
                          'assets/cart.png',
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Wireless, smart home speaker",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "A wireless speaker with a dynamic acoustic",
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "performance designed to be positioned up",
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "against the wall on a shelf or side table in your",
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "home. Impressive sound compared to its size.",
                ),
              ],
            ),
            const SizedBox(
              height: 90,
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
                    MaterialPageRoute(builder: (_) => const ReviewPage()));
              },
              child: const Center(
                child: Text(
                  "ADD TO CART",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
