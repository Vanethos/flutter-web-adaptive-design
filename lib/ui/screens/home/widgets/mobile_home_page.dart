import 'package:flutter/material.dart';

class MobileHomePage extends StatelessWidget {
  const MobileHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, i) => ListTile(
          title: Card(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(i.toString()),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "User",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money_rounded),
            label: "Balance",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "About",
          ),
        ],
      ),
    );
  }
}
