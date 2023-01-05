import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.green,
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.black,
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            color: Color.fromARGB(255, 223, 77, 77),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Color.fromARGB(255, 233, 175, 69),
                            child: Container(
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 4,
                                      child: Container(
                                        color: Colors.white,
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Color.fromARGB(255, 33, 58, 170),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Color.fromARGB(255, 226, 0, 0),
                            child: Container(
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 6,
                                      child: Container(
                                        color:
                                            Color.fromARGB(255, 146, 153, 87),
                                      )),
                                  Expanded(
                                      flex: 7,
                                      child: Container(
                                        color:
                                            Color.fromARGB(255, 33, 138, 170),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromARGB(255, 108, 134, 109),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Color.fromARGB(255, 196, 144, 209),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          color: Color.fromARGB(255, 97, 2, 248),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 6,
                                  child: Container(
                                    color: Color.fromARGB(255, 146, 153, 87),
                                    child: Column(
                                      children: [
                                        Expanded(
                                            flex: 7,
                                            child: Container(
                                              color: Color.fromARGB(
                                                  255, 146, 153, 87),
                                            )),
                                        Expanded(
                                            flex: 2,
                                            child: Container(
                                              color: Color.fromARGB(
                                                  255, 162, 236, 233),
                                            )),
                                      ],
                                    ),
                                  )),
                              Expanded(
                                  flex: 7,
                                  child: Container(
                                    color: Color.fromARGB(255, 33, 138, 170),
                                    child: Column(
                                      children: [
                                        Expanded(
                                            flex: 2,
                                            child: Container(
                                              color: Color.fromARGB(
                                                  255, 225, 250, 2),
                                            )),
                                        Expanded(
                                            flex: 7,
                                            child: Container(
                                              color:
                                                  Color.fromARGB(255, 5, 8, 8),
                                            )),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
