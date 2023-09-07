import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({super.key});

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  final dormsSelected = [true, true, true, true];

  void selectDorm(int index) {
    setState(() {
      for (int i = 0; i < 4; i++) {
        if (i == index) {
          dormsSelected[i] = true;
        } else {
          dormsSelected[i] = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
              width: 320,
              child: Text(
                'Select your\ndorm type',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: -2,
                  height: 0.8,
                  fontSize: 43,
                  color: Color(0xff1B3D71),
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 40,
              width: 330,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: dormsSelected[0] == true
                            ? const Color(0xff2E3784)
                            : const Color(0xffA0A2BA),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: SizedBox(
                        width: 150,
                        height: 150,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            splashFactory: NoSplash.splashFactory,
                            surfaceTintColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                          ),
                          onPressed: () => {
                            selectDorm(0),
                          },
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "A",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 58,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Women",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: dormsSelected[1] == true
                            ? const Color(0xff2E3784)
                            : const Color(0xffA0A2BA),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: SizedBox(
                        width: 150,
                        height: 150,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            splashFactory: NoSplash.splashFactory,
                            surfaceTintColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                          ),
                          onPressed: () => {
                            selectDorm(1),
                          },
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "A",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 58,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Men",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: dormsSelected[2] == true
                            ? const Color(0xff2E3784)
                            : const Color(0xffA0A2BA),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: SizedBox(
                        width: 150,
                        height: 150,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            splashFactory: NoSplash.splashFactory,
                            surfaceTintColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                          ),
                          onPressed: () => {
                            selectDorm(2),
                          },
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "B",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 58,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Women",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: dormsSelected[3] == true
                            ? const Color(0xff2E3784)
                            : const Color(0xffA0A2BA),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: SizedBox(
                        width: 150,
                        height: 150,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            splashFactory: NoSplash.splashFactory,
                            surfaceTintColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                          ),
                          onPressed: () => {
                            selectDorm(3),
                          },
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "B",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 58,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Men",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 320,
                  height: 60,
                ),
                SizedBox(
                  width: 320,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () => {
                      print("hejwlew"),
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 1,
                      backgroundColor: const Color(0xff1B3D71),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
