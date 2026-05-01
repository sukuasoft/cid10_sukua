import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:flutter/services.dart';
import 'dart:convert';

part 'app_database.g.dart';

class Cid10Table extends Table {
  TextColumn get code => text()();
  TextColumn get name => text()();
  TextColumn get description => text()();
  TextColumn get category => text()();
  TextColumn get version => text().withDefault(const Constant('CID-10'))();

  @override
  Set<Column> get primaryKey => {code};
}

class FavoritesTable extends Table {
  TextColumn get cidCode => text().references(Cid10Table, #code)();
  BoolColumn get isFavorite => boolean().withDefault(const Constant(true))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {cidCode};
}

@DriftDatabase(tables: [Cid10Table, FavoritesTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<void> seedDatabaseIfNeeded() async {
    final count = await (select(cid10Table)..limit(1)).get();
    if (count.isNotEmpty) return;

    final jsonStr = await rootBundle.loadString('assets/cid10.json');
    final List<dynamic> jsonList = jsonDecode(jsonStr);
    await batch((batch) {
      batch.insertAll(
        cid10Table,
        jsonList.map(
          (e) => Cid10TableCompanion.insert(
            code: e['code'],
            name: e['name'],
            description: e['description'],
            category: e['category'],
            version: Value(e['version'] ?? 'CID-10'),
          ),
        ),
      );
    });
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'cid10.db'));
    return NativeDatabase.createInBackground(file);
  });
}
