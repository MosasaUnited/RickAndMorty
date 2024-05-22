class CharacterModel {
  late int charId;
  late String name;
  late String status;
  late String species;
  late String gender;
  late String location;
  late String image;
  late List<String> episode;
  late String url;
  late String created;

  CharacterModel.fromJson(Map<String, dynamic> json) {
    charId = json["id"];
    name = json["name"];
    status = json["status"];
    species = json["species"];
    gender = json["gender"];
    location = json["location"];
    image = json["image"];
    episode = json["episode"];
    url = json["url"];
    created = json["created"];
  }
}
