import 'package:flutter/material.dart';
import 'package:slider/Password_Recovery.dart';
import 'package:slider/SecondPage.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPage();
}

class _ThirdPage extends State<ThirdPage> {
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
                      Row(
                        children: <Widget>[
                          ClipRRect(
                            child: Image.asset(
                              'assets/location.png',
                              width: 25,
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
                        height: 50,
                      ),
                      Row(
                        children: const <Widget>[
                          Text(
                            "Getting Started",
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
                          Text("Create an account to continue")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text(
                      "Email",
                      style: TextStyle(fontSize: 12, color: Color(0xff8F92A1)),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Positioned(
                    left: 20,
                    top: 10,
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/mail.png',
                        width: 40,
                        height: 30,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      height: 45,
                      margin: const EdgeInsets.fromLTRB(70, 0, 30, 0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Username',
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
                indent: 30,
                endIndent: 30,
                thickness: 1,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text(
                      "Password",
                      style: TextStyle(color: Color(0xff8F92A1), fontSize: 12),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Positioned(
                    left: 20,
                    top: 10,
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
                      margin: const EdgeInsets.fromLTRB(70, 0, 30, 0),
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
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
                indent: 30,
                endIndent: 30,
                thickness: 1,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text(
                      "Password",
                      style: TextStyle(color: Color(0xff8F92A1), fontSize: 12),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Positioned(
                    left: 20,
                    top: 10,
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/lock.png',
                        width: 40,
                        height: 30,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 30,
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/eye.png',
                        width: 40,
                        height: 30,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Container(
                      height: 45,
                      margin: const EdgeInsets.fromLTRB(70, 0, 30, 0),
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
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
                indent: 30,
                endIndent: 30,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 20),
                child: SizedBox(
                  height: 100,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/checkbox.png',
                            width: 17,
                            height: 17,
                          ),
                          const SizedBox(width: 15),
                          const Text(
                            "By creating an account, you agree to our ",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Row(
                          children: const [
                            Text(
                              "Terms & Conditions",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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
                      context,
                      MaterialPageRoute(
                          builder: (_) => const PasswordRecovery()));
                },
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 120.0),
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 95.0),
                      child: Icon(
                        Icons.login,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an acoount?",
                        style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const SecondPage()));
                        },
                        child: const Text(
                          " Sign in",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(198, 60, 121, 230),
                  minimumSize: const Size(325, 50),
                  maximumSize: const Size(325, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const ThirdPage()));
                },
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 0.0),
                      child: Icon(
                        Icons.arrow_forward,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50.0),
                      child: Text(
                        "Connect with Facebook",
                        style: TextStyle(color: Colors.white),
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
