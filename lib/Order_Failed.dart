import 'package:flutter/material.dart';

class Order_Failed extends StatefulWidget {
  const Order_Failed({Key? key}) : super(key: key);

  @override
  State<Order_Failed> createState() => _Order_Failed();
}

class _Order_Failed extends State<Order_Failed> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: <Widget>[
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
                'ORDER COMPLETE',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Icon(Icons.more_horiz),
              )
            ],
          ),
          const SizedBox(
            height: 130,
          ),
          ClipRRect(
            child: Image.asset(
              'assets/complete.png',
              width: 90,
              height: 90,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(
              child: Text(
            "Order Failed",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )),
          const SizedBox(
            height: 10,
          ),
          const Center(child: Text("Your payment occurred an error.")),
          const SizedBox(
            height: 40,
          ),
          const Divider(),
          const SizedBox(
            height: 30,
          ),
          const Icon(
            Icons.info_outline,
            size: 30,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Do not worry",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Keep calm, sometimes it happens"),
          const SizedBox(
            height: 10,
          ),
          const Text("Please go back and check your payment method"),
          const SizedBox(
            height: 10,
          ),
          const Text("or contact us"),
          const SizedBox(
            height: 85,
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
            onPressed: () {},
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Image.asset(
                    'assets/img.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Text(
                    "SEE ORDER DETAILS",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.grey.shade300,
              minimumSize: const Size(325, 50),
              maximumSize: const Size(325, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
              ),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "SEE ORDER DETAILS",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
