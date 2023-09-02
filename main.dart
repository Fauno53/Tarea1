import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

bool? press;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mc Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Mc Flutter'),
          ),
          body: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle_rounded,
                      size: 50,
                    ),
                    Text(
                      "Flutter Mc Flutter",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                Text("Experienced App Developer"),
                Row(
                  children: [
                    Text("123 main Street  "),
                    Expanded(
                        child: Text(
                      "415 555 01989",
                      textAlign: TextAlign.right,
                    ))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            press = true;
                            ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(
                                SnackBar(
                                  content: Text("Accesibilidad"),
                                ),
                              );

                            ;
                          },
                          icon: Icon(Icons.accessibility_outlined,
                              color: press == false
                                  ? Colors.indigo
                                  : Colors.black)),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(
                              SnackBar(
                                content: Text("Tiempo"),
                              ),
                            );
                        },
                        icon: Icon(Icons.access_time,
                            color:
                                press == false ? Colors.indigo : Colors.black),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(
                              SnackBar(
                                content: Text("Android"),
                              ),
                            );
                        },
                        icon: Icon(Icons.phone_android_outlined,
                            color:
                                press == false ? Colors.indigo : Colors.black),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(
                              SnackBar(
                                content: Text("Iphone"),
                              ),
                            );
                        },
                        icon: Icon(Icons.phone_android_outlined,
                            color:
                                press == false ? Colors.indigo : Colors.black),
                      ),
                    ),
                  ],
                )
              ],
            ),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2.0)),
          )),
    );
  }
}
