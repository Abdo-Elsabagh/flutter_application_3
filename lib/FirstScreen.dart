import 'package:flutter/material.dart';

class FirstScrenn extends StatelessWidget {
  const FirstScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          const Text('Best Caregorirs'),
          SizedBox(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const CircleAvatar(
                    radius: 30,
                    //backgroundColor: Colors.blue,
                    backgroundImage: AssetImage('assets/d1.jpeg'),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 15,
                  );
                },
                itemCount: 15),
          ),
        ]),
      ),
    );
  }
}
