import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({
    Key? key,
  }) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  bool persona = false;
  bool timer = false;
  bool phone1 = false;
  bool phone2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MC Flutter'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.4)),
            margin: EdgeInsets.only(left: 5, right: 5),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 45,
                    ),
                    Column(
                      children: [
                        Text(
                          "Flutter McFlutter",
                          style: TextStyle(fontSize: 21),
                        ),
                        Text(
                          "Experienced App Developer",
                          style: TextStyle(fontSize: 13),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "123 Main Street",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text("(415) 555-01-98", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: () {
                          persona = !persona;
                          timer = false;
                          phone1 = false;
                          phone2 = false;

                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(SnackBar(
                                content: Text(
                                    "Únete a un club con otras personas")));
                          setState(() {});
                        },
                        icon: Icon(
                          Icons.accessibility,
                          color: persona ? Colors.indigo : Colors.black,
                        )),
                    IconButton(
                        onPressed: () {
                          persona = false;
                          timer = !timer;
                          phone1 = false;
                          phone2 = false;

                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(SnackBar(
                                content: Text(
                                    "Cuenta regresiva para el evento: 31 días")));
                          setState(() {});
                        },
                        icon: Icon(Icons.timer,
                            color: timer ? Colors.indigo : Colors.black)),
                    IconButton(
                        onPressed: () {
                          persona = false;
                          timer = false;
                          phone1 = !phone1;
                          phone2 = false;

                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(SnackBar(
                                content: Text("Llama al número 4155550198")));
                          setState(() {});
                        },
                        icon: Icon(Icons.phone_android,
                            color: phone1 ? Colors.indigo : Colors.black)),
                    IconButton(
                        onPressed: () {
                          persona = false;
                          timer = false;
                          phone1 = false;
                          phone2 = !phone2;

                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(SnackBar(
                                content: Text("Llama al celular 331786513")));
                          setState(() {});
                        },
                        icon: Icon(Icons.phone_iphone,
                            color: phone2 ? Colors.indigo : Colors.black)),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
