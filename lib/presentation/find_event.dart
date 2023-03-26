import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FindEvent extends StatelessWidget {
  const FindEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 248, 253, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        title: const Text("Get Back"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/lantern-festival.jpg'),
                      fit: BoxFit.cover)),
              child: Transform.translate(
                offset: const Offset(15, -15),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.white),
                      shape: BoxShape.circle,
                      color: Colors.yellow[900]),
                ),
              ),
            ),
          )
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: "Search Event",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              makeItem(
                  name: "Chiayi City International Band Festival",
                  image: 'assets/band-festival.jpg',
                  date: 17,
                  month: "JAN",
                  time: "12:00"),
              const SizedBox(
                height: 20,
              ),
              makeItem(
                  name: "Taiwan Cycling Festival",
                  image: 'assets/cycling.jpg',
                  date: 1,
                  month: "FEB",
                  time: "06:00"),
              const SizedBox(
                height: 20,
              ),
              makeItem(
                  name: "Pingxi Sky Lantern Festival",
                  image: 'assets/lantern-festival.jpg',
                  date: 26,
                  month: "APR",
                  time: "20:00"),
              const SizedBox(
                height: 20,
              ),
              makeItem(
                  name: "Road to Ultra",
                  image: 'assets/ultra.png',
                  date: 11,
                  month: "SEP",
                  time: "18:00"),
              const SizedBox(
                height: 20,
              ),
              makeItem(
                  name: "Taiwan International Balloon Festival",
                  image: 'assets/ballon-festival.jpg',
                  date: 14,
                  month: "OCT",
                  time: "15:00"),
              const SizedBox(
                height: 20,
              ),
              makeItem(
                  name: "Christmaslan in New Taipei City",
                  image: 'assets/christmas.jpg',
                  date: 25,
                  month: "DEC",
                  time: "18:30"),
              const SizedBox(
                height: 20,
              ),
              makeItem(
                  name: "2022 New Year's Eve Celebration",
                  image: 'assets/new-year-eve.jpg',
                  date: 31,
                  month: "DEC",
                  time: "22:00"),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({name, image, date, month, time}) {
    return Row(
      children: <Widget>[
        Container(
          width: 50,
          height: 200,
          margin: const EdgeInsets.only(right: 20),
          child: Column(
            children: <Widget>[
              Text(
                date.toString(),
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                month,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(.4),
                    Colors.black.withOpacity(.1),
                  ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.access_time,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        time,
                        style: const TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
