import 'package:flutter/material.dart';
import 'package:qr_scanner/tab1.dart';
import 'package:qr_scanner/tab2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  TabBar get _tabBar => const TabBar(
    // labelColor: Colors.blue,
    // unselectedLabelColor: Colors.white,
    tabs: [
      Tab(icon: Icon(Icons.qr_code_scanner)),
      Tab(icon: Icon(Icons.qr_code)),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
            centerTitle: true,
            bottom: _tabBar,
          ),
          body: const TabBarView(
            children: <Widget>[
              Tab1(),
              Tab2(),
            ],
          )),
    );
  }
}