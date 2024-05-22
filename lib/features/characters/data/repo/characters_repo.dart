import '../models/character_model.dart';
import '../services/characters_web_services.dart';

class CharactersRepo {
  final CharactersWebServices charactersWebServices;

  CharactersRepo(this.charactersWebServices);

  // <<< to call function from web services

  Future<List<CharacterModel>> getAllCharacters() async {
    final characters = await charactersWebServices.getAllCharacters();
    return characters
        .map((character) => CharacterModel.fromJson(character))
        .toList();
  }

  // >> Now Time To Pass Data To Cubit
}
