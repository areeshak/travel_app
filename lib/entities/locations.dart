class Locations {
  String name;
  String tag;
  String imageLink;
  String description;
  List<String>? itinerary;

  Locations({
    required this.name,
    required this.tag,
    required this.imageLink,
    required this.description,
    this.itinerary,
  });
}
