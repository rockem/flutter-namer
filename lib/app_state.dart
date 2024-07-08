import 'package:english_words/english_words.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_state.g.dart';

@riverpod
class PairGenerator extends _$PairGenerator {
  var current = WordPair.random();

  @override
  WordPair build() => WordPair.random();

  void getNext() {
    state = WordPair.random();
  }
}

@riverpod
class Favorites extends _$Favorites {
  @override
  List<WordPair> build() => [];

  void toggleFavorite(WordPair word) {
    if (state.contains(word)) {
      state.remove(word);
    } else {
      state.add(word);
    }
    state = [...state];
  }
}
