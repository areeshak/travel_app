import 'package:flutter/material.dart';
import '../entities/locations.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  List<Locations> locations = [
    Locations(
      name: 'Skardu',
      tag: 'Mountains',
      imageLink: 'skardu-1.jpg',
      description:
      "Skardu Baltistan lies in the heart of world's mightiest mountain ranges, the Great Himalaya and the Karakoram.",
      itinerary: [
        'Satpara Lake',
        'Lower Kachura Lake',
        'Katpana Desert',
        'Manthoka Waterfall',
      ],
    ),
    Locations(
      name: 'Kumrat Valley',
      tag: 'Mountains',
      imageLink: 'kumrat_valley-1.jpg',
      description:
      "Kumrat Valley is a famous tourist destination located in the Upper Dir District of Khyber Pakhtunkhwa the Province of Pakistan.",
      itinerary: [
        'Panjkora River',
        'Do Kala Chasma',
        'Katora Lake',
        'Jahaz Banda',
        'Kund Banda'
      ],
    ),
    Locations(
      name: 'Fairy Meadows',
      tag: 'Trek',
      imageLink: 'fairy_meadows-1.jpg',
      description:
      "Fairy Meadows is the heart of exotic North Pakistan, It is located at the base of Nanga Parbat.",
      itinerary: [
        'Jeep ride from Raikot Bridge to Tatu Village',
        'Hike for 3-4 hours towards the Meadows',
        'Camp at fairy Meadows',
        'Trek to Bayal Camp',
        'Trek to Nanga Parbat Base Camp',
        'Arrival at Base Camp',
      ],
    ),
    Locations(
      name: 'Shogran',
      tag: 'Mountaines',
      imageLink: 'shogran.jpg',
      description:
      "Shogran is a green plateau in the popular tourist area of Kaghan Valley Pakistan.",
      itinerary: [
        'Makra Peak',
        'Siri Paye',
        'Sharan Forest',
        'Musa ka Musalla',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Explore",
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.all(15),
          height: MediaQuery.of(context).size.height * 0.2,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned.fill(
                child: ClipRRect(
                  //rounded image borders
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'images/${locations[index].imageLink}',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                locations[index].name,
                style: const TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.03,
                  width: MediaQuery.of(context).size.width * 0.23,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      locations[index].tag,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey.withOpacity(0.8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
