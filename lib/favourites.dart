import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namer_app/app_state.dart';

class FavouritesPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var favorites = ref.watch(favoritesProvider);

    if (favorites.isEmpty) {
      return Center(
        child: Text('No favorites yet.'),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('You have '
              '${favorites.length} favorites:'),
        ),
        for (var pair in favorites)
          ListTile(leading: Icon(Icons.favorite), title: Text(pair.asLowerCase))
      ],
    );
  }
}
