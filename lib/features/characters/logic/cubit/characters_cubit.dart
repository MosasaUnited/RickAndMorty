import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../data/models/character_model.dart';
import '../../data/repo/characters_repo.dart';

part 'characters_state.dart';

// <<< We Get The Data From Repository Here
class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepo charactersRepo;
  List<CharacterModel> characters = [];

  CharactersCubit(this.charactersRepo) : super(CharactersInitial());

  // This Function Will Return Data From Repository
  List<CharacterModel> getAllCharacters() {
    charactersRepo.getAllCharacters().then(
      (characters) {
        emit(CharactersLoaded(characters));
        this.characters = characters;
      },
    );

    return characters;
  }
}
