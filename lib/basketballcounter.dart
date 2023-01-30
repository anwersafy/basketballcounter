import 'package:flutter/material.dart';

class PointsCounter extends StatefulWidget {
  const PointsCounter({Key? key}) : super(key: key);

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamApoints = 0 ;
  int teamBpoints = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Counter',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                //حركتهم مسافات متساويه
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        '$teamApoints',
                        style: const TextStyle(
                          fontSize: 150,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(70, 40),
                              backgroundColor: Colors.teal),
                          onPressed: () {
                            setState(() {
                              teamApoints++;


                            });
                          },
                          child: const Text(
                            'Add 1 point',
                            style: TextStyle(color: Colors.black),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(70, 40),
                              backgroundColor: Colors.teal),
                          onPressed: () {
                            setState(() {
                              teamApoints += 2 ;
                            });
                          },
                          child: const Text(
                            'Add 2 point',
                            style: TextStyle(color: Colors.black),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(70, 40),
                              backgroundColor: Colors.teal),
                          onPressed: () {
                            setState(() {
                              teamApoints +=3 ;
                            });
                          },
                          child: const Text(
                            'Add 3 point',
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  ),
                  const VerticalDivider(
                    indent: 30,
                    color: Colors.teal,
                    thickness: 3,
                  ),
                  Column(
                    children: [
                      const Text(
                        'Team B ',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        '$teamBpoints',
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(70, 40),
                              backgroundColor: Colors.teal),
                          onPressed: () {
                            setState(() {
                              teamBpoints ++ ;
                            });
                          },
                          child: const Text(
                            'Add 1 point',
                            style: TextStyle(color: Colors.black),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(70, 40),
                              backgroundColor: Colors.teal),
                          onPressed: () {
                            setState(() {
                              teamBpoints +=2 ;
                            });
                          },
                          child: const Text(
                            'Add 2 point',
                            style: TextStyle(color: Colors.black),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(70, 40),
                              backgroundColor: Colors.teal),
                          onPressed: () {
                            setState(() {
                              teamBpoints += 3 ;
                            });
                          },
                          child: const Text(
                            'Add 3 point',
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300, 40), backgroundColor: Colors.teal),
                onPressed: () {
                  setState(() {
                    teamBpoints = 0 ;
                    teamApoints = 0 ;
                  });
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
