// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pairGeneratorHash() => r'264a11aedffb09a53c983b3809fc4804a072b507';

/// See also [PairGenerator].
@ProviderFor(PairGenerator)
final pairGeneratorProvider =
    AutoDisposeNotifierProvider<PairGenerator, WordPair>.internal(
  PairGenerator.new,
  name: r'pairGeneratorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pairGeneratorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PairGenerator = AutoDisposeNotifier<WordPair>;
String _$favoritesHash() => r'3465512c84f3c03e3d27659d2412b0c720fb9764';

/// See also [Favorites].
@ProviderFor(Favorites)
final favoritesProvider =
    AutoDisposeNotifierProvider<Favorites, List<WordPair>>.internal(
  Favorites.new,
  name: r'favoritesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$favoritesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Favorites = AutoDisposeNotifier<List<WordPair>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
