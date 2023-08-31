import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.light,
          ),
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
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
                  color: Color(0xff2E3784),
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
                        color: const Color(0xff2E3784),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: SizedBox(
                        width: 150,
                        height: 150,
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
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xff2E3784),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: SizedBox(
                        width: 150,
                        height: 150,
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
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xff2E3784),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: SizedBox(
                        width: 150,
                        height: 150,
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
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xff2E3784),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: SizedBox(
                        width: 150,
                        height: 150,
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
                  ],
                ),
                const SizedBox(
                  width: 320,
                  height: 60,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff1B3D71),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const SizedBox(
                    width: 320,
                    height: 50,
                    child: Center(
                      child: Text(
                        "Next",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 27,
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
