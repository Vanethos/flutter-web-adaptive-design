import 'package:flutter/material.dart';

class DesktopHomePage extends StatelessWidget {
  const DesktopHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Adaptive App",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: MaterialButton(
              child: Text(
                'Profile',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
              color: Colors.amber,
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: MaterialButton(
              child: Text(
                'Balance',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
              color: Colors.pink,
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: MaterialButton(
              child: Text(
                'About',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
              color: Colors.red,
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: () {},
        ),
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100),
          itemBuilder: (context, i) => Card(
                  child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Text(i.toString()),
                ),
              ))),
    );
  }
}
