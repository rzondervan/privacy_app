import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 46.0,
              backgroundColor: Colors.black12,
              backgroundImage: AssetImage('assets/images/playstore.png'),
            ),
            const Text(
              'Robert Zondervan MSc',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 27.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'PRIVACYFUNCTIONARIS',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontSize: 17.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'ICT ENTERPRISE ARCHITECT',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontSize: 17.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.green.shade100,
              ),
            ),
            Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                  title: Text(
                    '+31 620 707 442',
                    style: TextStyle(
                      color: Colors.green.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                )),
            Card(
                margin:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.email,
                    color: Colors.green,
                  ),
                  title: Text(
                    'rzondervan@cioforum.nl',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.green.shade900,
                        fontFamily: 'Source Sans Pro'),
                  ),
                )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  tileColor: Colors.green,
                  leading: Icon(
                    Icons.chat,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Chat',
                    style: Theme.of(context).textTheme.headline6,
                    // style: TextStyle(
                    //     fontSize: 20.0,
                    //     backgroundColor: Colors.green,
                    //     color: Colors.white,
                    //     fontWeight: FontWeight.bold,
                    //     fontFamily: 'Source Sans Pro'),
                  ),
                ))
          ],
        )),
      ),
    );
  }
}
