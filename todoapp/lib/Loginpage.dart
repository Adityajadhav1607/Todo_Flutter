import 'package:flutter/material.dart';
import 'package:todoapp/Screen1.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
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
                Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                  ),
                  "Welcome back"),
                  SizedBox(
                    height: 50,
                  ),
                Image.asset("assets/Login_img.png"),
                SizedBox(
                  height: 80,
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 209, 229, 232),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      height: 50,
                      
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextField(
                           
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 209, 229, 232),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      height: 50,
                      
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: TextField(
                          
                           
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Text(
                        style: TextStyle(
                          color: Color(0xFF50C2C9)
                        ),
                        "Forget password ?"),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Screen1()));
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
                        ),"Login")),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account ?"),
                    Text("Sign Up")
                  ],
                )
        ],
      ),
      
    );
  }
}