import 'package:flutter/material.dart';

import '../main.dart';
import 'contact.dart';

class SimpleAppBarPage extends StatefulWidget {
  const SimpleAppBarPage({Key? key}) : super(key: key);

  @override
  _SimpleAppBarPageState createState() => _SimpleAppBarPageState();
}

class _SimpleAppBarPageState extends State<SimpleAppBarPage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(MyApp.title),
            //centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications_none),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              )
            ],
            //backgroundColor: Colors.purple,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.green],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            bottom: const TabBar(
              //isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: [
                //Tab(icon: Icon(Icons.home), text: 'Home'),
                Tab(icon: Icon(Icons.home), text: 'Home'),
                Tab(icon: Icon(Icons.star), text: 'DPIA'),
                Tab(icon: Icon(Icons.contact_page), text: 'Contact'),
                Tab(icon: Icon(Icons.face), text: 'Profiel'),
                Tab(icon: Icon(Icons.settings), text: 'Settings'),
              ],
            ),
            elevation: 20,
            titleSpacing: 20,
          ),
          body: TabBarView(
            children: [
              //buildPage('Home Pagina'),
              const Contact(),
              buildPage('DPIA Page'),
              const Contact(),
              buildPage('Profiel Pagina'),
              buildPage('Settings Pagina'),
            ],
          ),
        ),
      );

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 28),
        ),
      );
}
