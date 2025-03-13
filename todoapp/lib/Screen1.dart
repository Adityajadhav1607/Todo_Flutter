import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color(0xFF50C2C9),
            height: 250,
            width: double.infinity,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: -100,
                  top: -20,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Color.fromARGB(156, 143, 225, 215),
                  ),
                ),
                Positioned(
                  top: -100,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Color.fromARGB(156, 143, 225, 215),
                  ),
                ),
                Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      
                      backgroundImage: AssetImage("assets/Ellipse.png"),
                      radius: 50,
                      
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                        "Welcome Jeegar goyani"),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Center(child: Image.asset("assets/clock.png")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Good Afternoon",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Task List",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.amber.shade100,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              width: double.infinity,
              height: 380,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 30,
                            width: 285,
                            color: Color(0xFFEDD7D7),
                            child: TextFormField()),
                        InkWell(
                          // onTap: () {
                          //   return 
                          // },
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage("assets/clock.png"))),
                            height: 30,
                            // color: Colors.red,
                            width: 30,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
