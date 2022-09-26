import 'dart:ui';

import 'package:flutter/material.dart';

class glassbuttons extends StatelessWidget {
  const glassbuttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 130,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            child: Glassmorphism(
                              blur: 11,
                              opacity: 0.1,
                              radius: 100.0,
                              child: TextButton(
                                onPressed: () {
                                  // handle push to HomeScreen
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 5,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(25.0)),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Colors.black,
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        "assets/plus.png",
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment(0.0, 0.0),
                          width: 50,
                          height: 30,
                          child: Text(
                            "NEW",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            child: Glassmorphism(
                              blur: 11,
                              opacity: 0.1,
                              radius: 100.0,
                              child: TextButton(
                                onPressed: () {
                                  // handle push to HomeScreen
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 5,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(25.0)),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Colors.black,
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        "assets/top1.png",
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment(0.0, 0.0),
                          width: 50,
                          height: 30,
                          child: Text(
                            "PAY OFF",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            child: Glassmorphism(
                              blur: 11,
                              opacity: 0.1,
                              radius: 100.0,
                              child: TextButton(
                                onPressed: () {
                                  // handle push to HomeScreen
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 5,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(25.0)),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Colors.black,
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        "assets/top2.png",
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment(0.0, 0.0),
                          width: 50,
                          height: 30,
                          child: Text(
                            "LEND",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            child: Glassmorphism(
                              blur: 11,
                              opacity: 0.1,
                              radius: 100.0,
                              child: TextButton(
                                onPressed: () {
                                  // handle push to HomeScreen
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 5,
                                    horizontal: 5,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(25.0)),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      color: Colors.black,
                                      alignment: Alignment.center,
                                      child: Image.asset(
                                        "assets/grid.png",
                                        fit: BoxFit.cover,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment(0.0, 0.0),
                          width: 50,
                          height: 30,
                          child: Text(
                            "MORE",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Glassmorphism extends StatelessWidget {
  final double blur;
  final double opacity;
  final double radius;
  final Widget child;

  const Glassmorphism({
    Key? key,
    required this.blur,
    required this.opacity,
    required this.radius,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(opacity),
            borderRadius: BorderRadius.all(Radius.circular(radius)),
          ),
          child: child,
        ),
      ),
    );
  }
}
