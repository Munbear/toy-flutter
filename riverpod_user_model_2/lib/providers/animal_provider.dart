import 'package:riverpod/riverpod.dart';
import '../model/item_model.dart';

final animalProvider = StateNotifierProvider<AnimalState, Animal>((ref) {
  return AnimalState();
});

class AnimalState extends StateNotifier<Animal> {
  AnimalState()
      : super(Animal(
            name: 'cat', age: 7, weight: '20kg', breed: 'America short'));
}
