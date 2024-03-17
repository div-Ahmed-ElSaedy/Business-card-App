import 'package:flutter/material.dart';

String email = 'elsaedy552004';
String name = 'ENG ElSaedy';
String jobsname = 'Flatter Developer';
int phoneNamber = 01016038085;

void main() {
  runApp(
    const BusinessCardApp(),
  );
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff1B4242),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: CircleAvatar(
                radius: 112,
                // backgroundColor: Color(0x65FFFFFF),
                backgroundColor: Color(0x65FFFFFF),
                child: CircleAvatar(
                  radius: 110,
                  backgroundImage: AssetImage('images/1.jpg'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: 'Lemon',
                ),
              ),
            ),
            Text(
              jobsname,
              style: const TextStyle(
                color: Color(0xFF869EB1),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              height: 30,
              indent: 60,
              endIndent: 60,
              thickness: 1,
              color: Color(0x50FFFFFF),
            ),
            Card(
              margin: const EdgeInsets.only(
                  top: 0, bottom: 10, left: 16, right: 16),
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  size: 40,
                  color: Color(0xff1B4242),
                ),
                title: Text(
                  '(+20) $phoneNamber',
                  style: const TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(
                  top: 0, bottom: 20, left: 16, right: 16),
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  size: 40,
                  color: Color(0xff1B4242),
                ),
                title: Text(
                  '$email@gmail.com',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
