import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart' as launcher;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int v7 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          backgroundColor: const Color(0xFFAAAAAA),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF202020),
                ),
                child: Center(
                  child: Text(
                    'Thanks For the review',
                    style: TextStyle(
                      fontFamily: "Zeyada",
                      color: Colors.yellow,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Center(
                child: ListTile(
                  title: const Center(
                    child: Text(
                      'Click to see the code for the program(Github)',
                      style: TextStyle(
                        fontFamily: 'kanadaka',
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        shadows: [
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 5.0,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () async {
                    Uri url = Uri.parse('https://github.com/MD-Osman/My_Card');
                    if (!await launcher.launchUrl(url)) {
                      debugPrint(
                        'Could not launch $url',
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          leading: Builder(builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Icon(
                Icons.code,
                color: Colors.yellowAccent,
              ),
            );
          }),
          backgroundColor: Colors.black54,
          centerTitle: true,
          title: const Text(
            "My Card",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'kanadaka',
            ),
          ),
        ),
        backgroundColor: const Color(0xFF253031),
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'images/space.jpg',
                repeat: ImageRepeat.repeat,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(1.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage('images/me1.jpeg'),
                  ),
                ),
                const Text(
                  'Muhammed Osman',
                  style: TextStyle(
                    fontFamily: 'kanadaka',
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    shadows: [
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 5.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Mobile Development',
                  style: TextStyle(
                    color: Colors.grey.shade200,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    shadows: const [
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 5.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Back-end Development',
                  style: TextStyle(
                    color: Colors.grey.shade200,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    shadows: const [
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 5.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 200.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.grey.shade200,
                  ),
                ),
                const Text(
                  ' I CAME \n ',
                  style: TextStyle(
                    fontFamily: 'kanadaka',
                    color: Color.fromARGB(255, 107, 16, 16),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 5.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const Text(
                  ' I SAW \n ',
                  style: TextStyle(
                    fontFamily: 'kanadaka',
                    color: Color.fromARGB(255, 107, 16, 16),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 5.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const Text(
                  ' I CONQUERED \n ',
                  style: TextStyle(
                    fontFamily: 'kanadaka',
                    color: Color.fromARGB(255, 107, 16, 16),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 5.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 200.0,
                  height: 20.0,
                  child: Divider(
                    color: Colors.grey.shade200,
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(20),
                  child: ListTile(
                    leading: const Icon(
                      Icons.phone,
                      color: Colors.cyan,
                      size: 25.0,
                    ),
                    title: const Text(
                      '+90 536 951 52 31',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.person_add,
                      color: Colors.black,
                      size: 25.0,
                    ),
                    onTap: () async {
                      const phoneNumber = '+90 536 951 52 31';
                      Uri url = Uri.parse('tel:$phoneNumber');

                      if (!await launcher.launchUrl(url)) {
                        debugPrint(
                          'Could not launch $url',
                        );
                      }
                    },
                  ),
                ),
                Card(
                  margin: const EdgeInsets.all(20),
                  child: ListTile(
                    leading: const Icon(
                      Icons.email,
                      color: Colors.cyan,
                      size: 25.0,
                    ),
                    title: const Text(
                      'trosman2001@gmail.com',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.send,
                      color: Colors.black,
                      size: 25.0,
                    ),
                    onTap: () async {
                      final Uri emailUri = Uri(
                        scheme: 'mailto',
                        path: 'trosman2001@gmail.com',
                        queryParameters: {
                          'subject': 'Hello Muhammed',
                          'body': 'Hi'
                        },
                      );

                      if (!await launcher.launchUrl(emailUri)) {
                        debugPrint(
                          'Could not launch $emailUri',
                        );
                      }
                    },
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
