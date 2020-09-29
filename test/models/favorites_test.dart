import 'package:provider_list_test/models/favorites.dart';
import 'package:test/test.dart';

void main() {
  group('Provider Tests', () {
    var favorites = Favorites();

    test('A new item should be added', () {
      var number = 1;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });

    test('A new item should be removed', () {
      var number = 2;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}
