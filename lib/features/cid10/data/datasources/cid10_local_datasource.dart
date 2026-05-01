import 'package:cid10_sukua/core/database/app_database.dart';
import 'package:drift/drift.dart';

class Cid10LocalDatasource {
  final AppDatabase db;

  Cid10LocalDatasource(this.db);

  Future<List<Cid10WithFavorite>> search(String query) async {
    final results = query.isEmpty
        ? await db.select(db.cid10Table).get()
        : await (db.select(db.cid10Table)
              ..where((tbl) =>
                  tbl.code.like('%$query%') |
                  tbl.name.like('%$query%') |
                  tbl.description.like('%$query%')))
            .get();

    final favorites = await db.select(db.favoritesTable).get();
    final favCodes = favorites.map((e) => e.cidCode).toSet();

    return results
        .map((e) => Cid10WithFavorite(e, favCodes.contains(e.code)))
        .toList();
  }

  Future<List<String>> getCategories() async {
    final res = await (db.selectOnly(db.cid10Table)
          ..addColumns([db.cid10Table.category])
          ..groupBy([db.cid10Table.category]))
        .get();
    return res.map((e) => e.read(db.cid10Table.category)!).toList();
  }

  Future<void> toggleFavorite(String code) async {
    final existing = await (db.select(db.favoritesTable)
          ..where((tbl) => tbl.cidCode.equals(code)))
        .getSingleOrNull();
    if (existing != null) {
      await db.delete(db.favoritesTable).delete(existing);
    } else {
      await db.into(db.favoritesTable).insert(
            FavoritesTableCompanion.insert(cidCode: code),
          );
    }
  }
}

class Cid10WithFavorite {
  final Cid10TableData cid;
  final bool isFavorite;

  const Cid10WithFavorite(this.cid, this.isFavorite);
}
