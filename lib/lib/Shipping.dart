import 'package:flutter/material.dart';

import 'Payment.dart';

class Shipping extends StatefulWidget {
  const Shipping({Key? key}) : super(key: key);

  @override
  State<Shipping> createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                    'SHIPPING',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 30.0),
                    child: Icon(Icons.more_horiz),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 392,
                    height: 250,
                    color: Colors.grey[200],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 5,
                    color: Colors.grey[200],
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20.0, left: 30, right: 30),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              counterText: "",
                              hintText: "Enter Your Address",
                              suffixIcon: Icon(Icons.search)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              const Divider(
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0, top: 20),
                child: Row(
                  children: <Widget>[
                    const Text(
                      "My Addresses",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/blackarrow.png',
                      width: 20,
                      height: 30,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SizedBox(
                  height: 90,
                  width: 320,
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/pin.png',
                        width: 20,
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 10),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        "Perth",
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: const <Widget>[
                                      Text(
                                        "139 Haystreet",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 130.0),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/Done.png',
                              width: 50,
                              height: 50,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: SizedBox(
                  height: 90,
                  width: 320,
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/pin.png',
                        width: 20,
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 10),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        "Perth",
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: const <Widget>[
                                      Text(
                                        "Apple Perth City",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 108.0),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/Done.png',
                              width: 50,
                              height: 50,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              SizedBox(
                height: 30,
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
                      MaterialPageRoute(builder: (_) => const Payment()));
                },
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 70.0),
                      child: Text(
                        "CONTINUE TO PAYMENT",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0),
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
      ),
    );
  }
}
