import 'package:flutter/material.dart';
import 'package:slider/Order_Failed.dart';

class Order_Complete extends StatefulWidget {
  const Order_Complete({Key? key}) : super(key: key);

  @override
  State<Order_Complete> createState() => _Order_CompleteState();
}

class _Order_CompleteState extends State<Order_Complete> {
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
            height: 150,
          ),
          ClipRRect(
            child: Image.asset(
              'assets/complete.png',
              width: 90,
              height: 90,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Center(
              child: Text(
            "Payment Successful!",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          )),
          const SizedBox(
            height: 10,
          ),
          const Center(child: Text("Order will arive in 3 days!")),
          const SizedBox(
            height: 40,
          ),
          const Divider(),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200),
                child: Image.asset(
                  'assets/perfumespeaker.png',
                  width: 30,
                  height: 30,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200),
                child: Image.asset(
                  'assets/Beosoundbalance.png',
                  width: 30,
                  height: 30,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200),
                child: Image.asset(
                  'assets/headset.png',
                  width: 30,
                  height: 30,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200),
                child: Image.asset(
                  'assets/roundplate.png',
                  width: 30,
                  height: 30,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              Text(
                "Beosound1",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Text(
                "Beosound...",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Text(
                "BeoPlay H...",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Text(
                "BeoPlay A9",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              )
            ],
          ),
          const SizedBox(
            height: 180,
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
                  MaterialPageRoute(builder: (_) => const Order_Failed()));
            },
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 80.0),
                  child: Text(
                    "SEE ORDER DETAILS",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
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
