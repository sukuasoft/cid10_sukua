import 'package:drift/drift.dart';
import 'package:cid10_sukua/core/database/app_database.dart';

class Cid10Dto {
  final String code;
  final String name;
  final String description;
  final String category;
  final String version;

  const Cid10Dto({
    required this.code,
    required this.name,
    required this.description,
    required this.category,
    this.version = 'CID-10',
  });

  factory Cid10Dto.fromTableData(Cid10TableData data) => Cid10Dto(
        code: data.code,
        name: data.name,
        description: data.description,
        category: data.category,
        version: data.version,
      );

  Cid10TableCompanion toCompanion() => Cid10TableCompanion(
        code: Value(code),
        name: Value(name),
        description: Value(description),
        category: Value(category),
        version: Value(version),
      );
}
