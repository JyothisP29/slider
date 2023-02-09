import 'package:flutter/material.dart';
import 'package:slider/SecondPage.dart';

class ForthPage extends StatefulWidget {
  ForthPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ForthPage> createState() => _ForthPage();
}

class _ForthPage extends State<ForthPage> {
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 35.0, top: 40),
                child: SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 70,
                      ),
                      Row(
                        children: const <Widget>[
                          Text(
                            "OTP Authentication",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Row(
                            children: const <Widget>[
                              Text("An authentication code has been")
                            ],
                          ),
                          Row(
                            children: const <Widget>[
                              Text("sent to (+61)0486935279")
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0, right: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                              maxLength: 1,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                counterText: "",
                              ),
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              }),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                              maxLength: 1,
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                counterText: "",
                              ),
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              }),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                              textAlign: TextAlign.center,
                              maxLength: 1,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                counterText: "",
                              ),
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              }),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Expanded(
                          flex: 1,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              counterText: "",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
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
                      MaterialPageRoute(builder: (_) => const SecondPage()));
                },
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 115.0),
                      child: Text(
                        "CONTINUE",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 85.0),
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
