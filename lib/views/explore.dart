import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/views/locationDetails.dart';
import '../entities/locations.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  List<Locations> locations = [
    Locations(
      name: 'Skardu',
      tag: 'Mountains',
      imageLink: [
        'skardu-1.jpg',
        'skardu-2.jpg',
        'skardu-3.jpg',
      ],
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
      imageLink: [
        'kumrat_valley-1.jpg',
        'kumrat_valley-2.jpg',
        'kumrat_valley-3.jpg',
      ],
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
      imageLink: [
        'fairy_meadows-1.jpg',
        'fairy_meadows-2.jpg',
        'fairy_meadows-3.jpg',
      ],
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
      imageLink: [
        'shogran-1.jpg',
        'shogran-2.jpg',
        'shogran-3.jpg',
      ],
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
        title: Text(
          "Explore",
          style: GoogleFonts.satisfy(
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
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) =>
                      LocationDetailsScreen(location: locations[index])),
            );
          },
          child: Container(
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
                      'images/${locations[index].imageLink[0]}',
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
      ),
    );
  }
}
