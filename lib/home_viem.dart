import 'package:flutter/material.dart';
import 'package:flutter_application_3/favorite_contacts.dart';

class HomeViem extends StatelessWidget {
  HomeViem({super.key});
  List<Contacts> contact = [
    Contacts(imgLink: 'assets/d1.jpeg', Name: 'Sayed Abdulaziz'),
    Contacts(imgLink: 'assets/d2.jpeg', Name: 'Ahmed Mohomed'),
    Contacts(imgLink: 'assets/d3.jpeg', Name: 'Amr Sayed'),
    Contacts(imgLink: 'assets/d4.jpg', Name: 'Ahmed Ali'),
    Contacts(imgLink: 'assets/d5.jpg', Name: 'Abdallah  Ahmed'),
    Contacts(imgLink: 'assets/d6.jpg', Name: 'Ahmed Sayed'),
    Contacts(imgLink: 'assets/d7.jpg', Name: 'Mostafa Ashraf'),
    Contacts(imgLink: 'assets/d8.jpeg', Name: 'ابوعبيدة'),
    Contacts(imgLink: 'assets/d8.jpeg', Name: 'ابوعبيدة'),
    Contacts(imgLink: 'assets/d8.jpeg', Name: 'ابوعبيدة'),
  ];
  List<Contacts> contact2 = [
    Contacts(imgLink: 'assets/d1.jpeg', Name: 'Sayed Abdulaziz'),
    Contacts(imgLink: 'assets/d2.jpeg', Name: 'Ahmed Mohomed'),
    Contacts(imgLink: 'assets/d3.jpeg', Name: 'Amr Sayed'),
    Contacts(imgLink: 'assets/d4.jpg', Name: 'Ahmed Ali'),
    Contacts(imgLink: 'assets/d5.jpg', Name: 'Abdallah  Ahmed'),
    Contacts(imgLink: 'assets/d6.jpg', Name: 'Ahmed Sayed'),
    Contacts(imgLink: 'assets/d7.jpg', Name: 'Mostafa Ashraf'),
    Contacts(imgLink: 'assets/d8.jpeg', Name: 'ابوعبيدة'),
    Contacts(imgLink: 'assets/d8.jpeg', Name: 'ابوعبيدة'),
    Contacts(imgLink: 'assets/d8.jpeg', Name: 'ابوعبيدة'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: const Text(
          'Chats',
          style: TextStyle(fontSize: 22),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Favorite contacts',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 120,
              child: ListView.separated(
                itemCount: contact.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(contact[index].imgLink),
                      ),
                      Text(contact[index].Name.substring(
                            0,
                          )),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 8.0),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(contact[index].imgLink),
                        ),
                        title: Text(
                          contact[index].Name,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text('Hello dear,How are you'),
                        trailing: const Text('10:10 pm'),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 20,
                      );
                    },
                    itemCount: contact.length),
              ),
            )
          ],
        ),
      ),
    );
  }
}
