import 'package:flutter/material.dart';
import 'package:slider/ThirdPage.dart';

import 'fifthpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPage();
}

class _SecondPage extends State<SecondPage> {
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
                  height: 230,
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ClipRRect(
                            child: Image.asset(
                              'assets/location.png',
                              width: 30,
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
                        height: 60,
                      ),
                      Row(
                        children: const <Widget>[
                          Text(
                            "Let's Sign you In",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: const <Widget>[
                          Text(
                            "Welcome back, you've been missed!",
                            style: TextStyle(fontSize: 14),
                          )
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
                      "Username or Email",
                      style: TextStyle(color: Color(0xff8F92A1), fontSize: 12),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Positioned(
                    left: 20,
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
                      margin: const EdgeInsets.fromLTRB(70, 10, 30, 0),
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
                thickness: 1,
                indent: 30,
                endIndent: 30,
              ),
              const SizedBox(
                height: 30,
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
                    top: 20,
                    child: ClipRRect(
                      child: Image.asset(
                        'assets/lock.png',
                        width: 40,
                        height: 30,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
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
                      margin: const EdgeInsets.fromLTRB(70, 10, 30, 0),
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
                thickness: 1,
                indent: 30,
                endIndent: 30,
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
                      context, MaterialPageRoute(builder: (_) => FifthPage()));
                },
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 125.0),
                      child: Text(
                        "SIGN IN",
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
                        "Don't have an account?",
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
                                  builder: (_) => const ThirdPage()));
                        },
                        child: const Text(
                          " Sign up",
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
                      MaterialPageRoute(builder: (_) => const SecondPage()));
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
