import 'package:cid10_sukua/features/cid10/domain/entities/cid10_entity.dart';
import 'package:cid10_sukua/features/cid10/domain/repositories/cid10_repository.dart';
import 'package:cid10_sukua/features/cid10/data/datasources/cid10_local_datasource.dart';

class Cid10RepositoryImpl implements Cid10Repository {
  final Cid10LocalDatasource datasource;

  Cid10RepositoryImpl(this.datasource);

  @override
  Future<List<Cid10Entity>> search(String query) async {
    final results = await datasource.search(query);
    return results
        .map((e) => Cid10Entity(
              code: e.cid.code,
              name: e.cid.name,
              description: e.cid.description,
              category: e.cid.category,
              version: e.cid.version,
              isFavorite: e.isFavorite,
            ))
        .toList();
  }

  @override
  Future<List<String>> getCategories() => datasource.getCategories();

  @override
  Future<void> toggleFavorite(String code) => datasource.toggleFavorite(code);
}
