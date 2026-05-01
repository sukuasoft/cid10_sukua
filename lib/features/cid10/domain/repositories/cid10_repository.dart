import 'package:cid10_sukua/features/cid10/domain/entities/cid10_entity.dart';

abstract class Cid10Repository {
  Future<List<Cid10Entity>> search(String query);
  Future<List<String>> getCategories();
  Future<void> toggleFavorite(String code);
}
