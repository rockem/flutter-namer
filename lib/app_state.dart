import 'package:english_words/english_words.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pairGeneratorProvider =
    StateNotifierProvider<PairGeneratorNotifier, WordPair>((ref) {
  return PairGeneratorNotifier();
});

class PairGeneratorNotifier extends StateNotifier<WordPair> {
  PairGeneratorNotifier() : super(WordPair.random());

  void getNext() {
    state = WordPair.random();
  }
}

final favoritesProvider =
    StateNotifierProvider<FavoritesNotifier, List<WordPair>>((ref) {
  return FavoritesNotifier();
});

class FavoritesNotifier extends StateNotifier<List<WordPair>> {
  FavoritesNotifier() : super([]);

  void toggleFavorite(WordPair word) {
    if (state.contains(word)) {
      state.remove(word);
    } else {
      state.add(word);
    }
    state = [...state];
  }
}
