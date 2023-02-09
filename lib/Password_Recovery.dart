import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:slider/ForthPage.dart';

class PasswordRecovery extends StatefulWidget {
  const PasswordRecovery({Key? key}) : super(key: key);

  @override
  State<PasswordRecovery> createState() => _PasswordRecovery();
}

class _PasswordRecovery extends State<PasswordRecovery> {
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
                  height: 250,
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ClipRRect(
                            child: Image.asset(
                              'assets/location.png',
                              width: 20,
                              height: 30,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Perth, Western Australia",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Row(
                        children: const <Widget>[
                          Text(
                            "Password Recovery",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const <Widget>[
                          Text("Enter your Phone number to recover"),
                        ],
                      ),
                      Row(
                        children: const [
                          Text("your password"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text("Phone Number"),
                  ),
                ],
              ),
              Column(
                children: [
                  Stack(children: [
                    Positioned(
                      left: 20,
                      top: 10,
                      child: CountryCodePicker(
                        initialSelection: 'NZ',
                        favorite: const ['+91', 'IND'],
                        showCountryOnly: false,
                        showOnlyCountryWhenClosed: false,
                        alignLeft: false,
                      ),
                    ),
                    Positioned(
                      child: Container(
                        height: 45,
                        margin: const EdgeInsets.fromLTRB(120, 10, 30, 0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Phone Number',
                          ),
                          keyboardType: TextInputType.numberWithOptions(),
                          onChanged: (value) {
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                  ]),
                  const Divider(
                    thickness: 1,
                    indent: 30,
                    endIndent: 30,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 160,
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
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => ForthPage()));
                },
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 110.0),
                      child: Text(
                        "CONTINUE",
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
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
