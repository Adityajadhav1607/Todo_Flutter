import 'package:flutter/material.dart';
import 'package:todoapp/loginpage.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 230,
            width: double.infinity,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: -100,
                  top: -20,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Color.fromARGB(133, 143, 225, 215),
                  ),
                ),
                Positioned(
                  top: -100,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Color.fromARGB(133, 143, 225, 215),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Image.asset("assets/screen1.png"),
                SizedBox(
                  height: 80,
                ),
                Text(
                  "Gets things with TODs",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Column(
                    children: [
                      Text(
                          "Lorem ipsum dolor sit amet consectetur. Eget sit nec et euismod. Consequat urna quam felis interdum quisque. Malesuada adipiscing tristique ut eget sed.")
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginpage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF50C2C9),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      height: 50,
                      width: double.infinity,
                      child: Center(child: Text(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),"Get Started")),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
        ],
      ),
      
    );
  }
}
