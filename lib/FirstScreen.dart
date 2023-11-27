import 'package:flutter/material.dart';
import 'package:flutter_application_3/city_Model.dart';

class FirstScrenn extends StatelessWidget {
  FirstScrenn({super.key});

  List<CityModel> cities = [
    CityModel(imgLink: 'assets/d1.jpeg', cityName: 'غزة', people: 2500000),
    CityModel(imgLink: 'assets/d2.jpeg', cityName: 'القدس', people: 1500000),
    CityModel(imgLink: 'assets/d3.jpeg', cityName: 'رام الله', people: 500000),
    CityModel(imgLink: 'assets/d1.jpeg', cityName: 'غزة', people: 2500000),
    CityModel(imgLink: 'assets/d2.jpeg', cityName: 'القدس', people: 1500000),
    CityModel(imgLink: 'assets/d3.jpeg', cityName: 'رام الله', people: 500000),
    CityModel(imgLink: 'assets/d1.jpeg', cityName: 'غزة', people: 2500000),
    CityModel(imgLink: 'assets/d2.jpeg', cityName: 'القدس', people: 1500000),
    CityModel(imgLink: 'assets/d3.jpeg', cityName: 'رام الله', people: 500000),
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const Icon(Icons.menu),
          title: const Text('المدن الفلسطنيه'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text('اشهر المدن في فلسطين'),
            SizedBox(
              height: 120,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: cities.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,

                        //backgroundColor: Colors.blue,
                        backgroundImage: AssetImage(cities[index].imgLink),
                      ),
                      Text(cities[index].cityName),
                      //Text(cities[index].people as String)
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 15,
                  );
                },
              ),
            ),
            const Text('كل المدن', style: TextStyle(fontSize: 22)),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {},
                      tileColor: Colors.grey,
                      contentPadding:
                          const EdgeInsets.only(top: 0, bottom: 0, right: 5),
                      leading: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            cities[index].imgLink,
                            width: 120,
                            height: 100,
                            fit: BoxFit.cover,
                          )),
                      title: Text(
                        cities[index].cityName,
                        style: const TextStyle(fontSize: 18),
                      ),
                      subtitle: Text(
                          'عدد السكان : ${cities[index].people.toString()}'),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_ios_rounded)),
                    );

                    // Container(
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(15),
                    //       color: Colors.grey),
                    //   height: 100,
                    //   child: Row(
                    //     children: [
                    //       ClipRRect(
                    //         borderRadius: BorderRadius.circular(15),
                    //         child: Image.asset(
                    //           cities[index].imgLink,
                    //           width: 120,
                    //           height: 100,
                    //           fit: BoxFit.cover,
                    //         ),
                    //       ),
                    //       const SizedBox(
                    //         width: 15,
                    //       ),
                    //       Column(
                    //         mainAxisAlignment:
                    //             MainAxisAlignment.spaceAround,
                    //         crossAxisAlignment: CrossAxisAlignment.start,
                    //         children: [
                    //           Text(
                    //             cities[index].cityName,
                    //             style: const TextStyle(fontSize: 18),
                    //           ),
                    //           Text(
                    //               'عدد السكان : ${cities[index].people.toString()}'),
                    //         ],
                    //       )
                    //     ],
                    //   ),
                    // );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Colors.grey,
                      thickness: 2,
                    );
                  },
                  itemCount: cities.length),
            )
          ]),
        ),
      ),
    );
  }
}
