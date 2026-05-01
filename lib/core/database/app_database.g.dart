// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $Cid10TableTable extends Cid10Table
    with TableInfo<$Cid10TableTable, Cid10TableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $Cid10TableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<String> code = GeneratedColumn<String>(
    'code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _versionMeta = const VerificationMeta(
    'version',
  );
  @override
  late final GeneratedColumn<String> version = GeneratedColumn<String>(
    'version',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('CID-10'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    code,
    name,
    description,
    category,
    version,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cid10_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<Cid10TableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('code')) {
      context.handle(
        _codeMeta,
        code.isAcceptableOrUnknown(data['code']!, _codeMeta),
      );
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('version')) {
      context.handle(
        _versionMeta,
        version.isAcceptableOrUnknown(data['version']!, _versionMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {code};
  @override
  Cid10TableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Cid10TableData(
      code: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}code'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      )!,
      version: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}version'],
      )!,
    );
  }

  @override
  $Cid10TableTable createAlias(String alias) {
    return $Cid10TableTable(attachedDatabase, alias);
  }
}

class Cid10TableData extends DataClass implements Insertable<Cid10TableData> {
  final String code;
  final String name;
  final String description;
  final String category;
  final String version;
  const Cid10TableData({
    required this.code,
    required this.name,
    required this.description,
    required this.category,
    required this.version,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['code'] = Variable<String>(code);
    map['name'] = Variable<String>(name);
    map['description'] = Variable<String>(description);
    map['category'] = Variable<String>(category);
    map['version'] = Variable<String>(version);
    return map;
  }

  Cid10TableCompanion toCompanion(bool nullToAbsent) {
    return Cid10TableCompanion(
      code: Value(code),
      name: Value(name),
      description: Value(description),
      category: Value(category),
      version: Value(version),
    );
  }

  factory Cid10TableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Cid10TableData(
      code: serializer.fromJson<String>(json['code']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      category: serializer.fromJson<String>(json['category']),
      version: serializer.fromJson<String>(json['version']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'code': serializer.toJson<String>(code),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'category': serializer.toJson<String>(category),
      'version': serializer.toJson<String>(version),
    };
  }

  Cid10TableData copyWith({
    String? code,
    String? name,
    String? description,
    String? category,
    String? version,
  }) => Cid10TableData(
    code: code ?? this.code,
    name: name ?? this.name,
    description: description ?? this.description,
    category: category ?? this.category,
    version: version ?? this.version,
  );
  Cid10TableData copyWithCompanion(Cid10TableCompanion data) {
    return Cid10TableData(
      code: data.code.present ? data.code.value : this.code,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
      category: data.category.present ? data.category.value : this.category,
      version: data.version.present ? data.version.value : this.version,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Cid10TableData(')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('category: $category, ')
          ..write('version: $version')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(code, name, description, category, version);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Cid10TableData &&
          other.code == this.code &&
          other.name == this.name &&
          other.description == this.description &&
          other.category == this.category &&
          other.version == this.version);
}

class Cid10TableCompanion extends UpdateCompanion<Cid10TableData> {
  final Value<String> code;
  final Value<String> name;
  final Value<String> description;
  final Value<String> category;
  final Value<String> version;
  final Value<int> rowid;
  const Cid10TableCompanion({
    this.code = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.category = const Value.absent(),
    this.version = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  Cid10TableCompanion.insert({
    required String code,
    required String name,
    required String description,
    required String category,
    this.version = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : code = Value(code),
       name = Value(name),
       description = Value(description),
       category = Value(category);
  static Insertable<Cid10TableData> custom({
    Expression<String>? code,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? category,
    Expression<String>? version,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (code != null) 'code': code,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (category != null) 'category': category,
      if (version != null) 'version': version,
      if (rowid != null) 'rowid': rowid,
    });
  }

  Cid10TableCompanion copyWith({
    Value<String>? code,
    Value<String>? name,
    Value<String>? description,
    Value<String>? category,
    Value<String>? version,
    Value<int>? rowid,
  }) {
    return Cid10TableCompanion(
      code: code ?? this.code,
      name: name ?? this.name,
      description: description ?? this.description,
      category: category ?? this.category,
      version: version ?? this.version,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (version.present) {
      map['version'] = Variable<String>(version.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('Cid10TableCompanion(')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('category: $category, ')
          ..write('version: $version, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FavoritesTableTable extends FavoritesTable
    with TableInfo<$FavoritesTableTable, FavoritesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FavoritesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _cidCodeMeta = const VerificationMeta(
    'cidCode',
  );
  @override
  late final GeneratedColumn<String> cidCode = GeneratedColumn<String>(
    'cid_code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES cid10_table (code)',
    ),
  );
  static const VerificationMeta _isFavoriteMeta = const VerificationMeta(
    'isFavorite',
  );
  @override
  late final GeneratedColumn<bool> isFavorite = GeneratedColumn<bool>(
    'is_favorite',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_favorite" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [cidCode, isFavorite, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'favorites_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<FavoritesTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('cid_code')) {
      context.handle(
        _cidCodeMeta,
        cidCode.isAcceptableOrUnknown(data['cid_code']!, _cidCodeMeta),
      );
    } else if (isInserting) {
      context.missing(_cidCodeMeta);
    }
    if (data.containsKey('is_favorite')) {
      context.handle(
        _isFavoriteMeta,
        isFavorite.isAcceptableOrUnknown(data['is_favorite']!, _isFavoriteMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cidCode};
  @override
  FavoritesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FavoritesTableData(
      cidCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cid_code'],
      )!,
      isFavorite: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_favorite'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $FavoritesTableTable createAlias(String alias) {
    return $FavoritesTableTable(attachedDatabase, alias);
  }
}

class FavoritesTableData extends DataClass
    implements Insertable<FavoritesTableData> {
  final String cidCode;
  final bool isFavorite;
  final DateTime createdAt;
  const FavoritesTableData({
    required this.cidCode,
    required this.isFavorite,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['cid_code'] = Variable<String>(cidCode);
    map['is_favorite'] = Variable<bool>(isFavorite);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  FavoritesTableCompanion toCompanion(bool nullToAbsent) {
    return FavoritesTableCompanion(
      cidCode: Value(cidCode),
      isFavorite: Value(isFavorite),
      createdAt: Value(createdAt),
    );
  }

  factory FavoritesTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FavoritesTableData(
      cidCode: serializer.fromJson<String>(json['cidCode']),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cidCode': serializer.toJson<String>(cidCode),
      'isFavorite': serializer.toJson<bool>(isFavorite),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  FavoritesTableData copyWith({
    String? cidCode,
    bool? isFavorite,
    DateTime? createdAt,
  }) => FavoritesTableData(
    cidCode: cidCode ?? this.cidCode,
    isFavorite: isFavorite ?? this.isFavorite,
    createdAt: createdAt ?? this.createdAt,
  );
  FavoritesTableData copyWithCompanion(FavoritesTableCompanion data) {
    return FavoritesTableData(
      cidCode: data.cidCode.present ? data.cidCode.value : this.cidCode,
      isFavorite: data.isFavorite.present
          ? data.isFavorite.value
          : this.isFavorite,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FavoritesTableData(')
          ..write('cidCode: $cidCode, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(cidCode, isFavorite, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FavoritesTableData &&
          other.cidCode == this.cidCode &&
          other.isFavorite == this.isFavorite &&
          other.createdAt == this.createdAt);
}

class FavoritesTableCompanion extends UpdateCompanion<FavoritesTableData> {
  final Value<String> cidCode;
  final Value<bool> isFavorite;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const FavoritesTableCompanion({
    this.cidCode = const Value.absent(),
    this.isFavorite = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FavoritesTableCompanion.insert({
    required String cidCode,
    this.isFavorite = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : cidCode = Value(cidCode);
  static Insertable<FavoritesTableData> custom({
    Expression<String>? cidCode,
    Expression<bool>? isFavorite,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (cidCode != null) 'cid_code': cidCode,
      if (isFavorite != null) 'is_favorite': isFavorite,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FavoritesTableCompanion copyWith({
    Value<String>? cidCode,
    Value<bool>? isFavorite,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return FavoritesTableCompanion(
      cidCode: cidCode ?? this.cidCode,
      isFavorite: isFavorite ?? this.isFavorite,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cidCode.present) {
      map['cid_code'] = Variable<String>(cidCode.value);
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FavoritesTableCompanion(')
          ..write('cidCode: $cidCode, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $Cid10TableTable cid10Table = $Cid10TableTable(this);
  late final $FavoritesTableTable favoritesTable = $FavoritesTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    cid10Table,
    favoritesTable,
  ];
}

typedef $$Cid10TableTableCreateCompanionBuilder =
    Cid10TableCompanion Function({
      required String code,
      required String name,
      required String description,
      required String category,
      Value<String> version,
      Value<int> rowid,
    });
typedef $$Cid10TableTableUpdateCompanionBuilder =
    Cid10TableCompanion Function({
      Value<String> code,
      Value<String> name,
      Value<String> description,
      Value<String> category,
      Value<String> version,
      Value<int> rowid,
    });

final class $$Cid10TableTableReferences
    extends BaseReferences<_$AppDatabase, $Cid10TableTable, Cid10TableData> {
  $$Cid10TableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$FavoritesTableTable, List<FavoritesTableData>>
  _favoritesTableRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.favoritesTable,
    aliasName: $_aliasNameGenerator(
      db.cid10Table.code,
      db.favoritesTable.cidCode,
    ),
  );

  $$FavoritesTableTableProcessedTableManager get favoritesTableRefs {
    final manager = $$FavoritesTableTableTableManager(
      $_db,
      $_db.favoritesTable,
    ).filter((f) => f.cidCode.code.sqlEquals($_itemColumn<String>('code')!));

    final cache = $_typedResult.readTableOrNull(_favoritesTableRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$Cid10TableTableFilterComposer
    extends Composer<_$AppDatabase, $Cid10TableTable> {
  $$Cid10TableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get code => $composableBuilder(
    column: $table.code,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> favoritesTableRefs(
    Expression<bool> Function($$FavoritesTableTableFilterComposer f) f,
  ) {
    final $$FavoritesTableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.code,
      referencedTable: $db.favoritesTable,
      getReferencedColumn: (t) => t.cidCode,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FavoritesTableTableFilterComposer(
            $db: $db,
            $table: $db.favoritesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$Cid10TableTableOrderingComposer
    extends Composer<_$AppDatabase, $Cid10TableTable> {
  $$Cid10TableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get code => $composableBuilder(
    column: $table.code,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get version => $composableBuilder(
    column: $table.version,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$Cid10TableTableAnnotationComposer
    extends Composer<_$AppDatabase, $Cid10TableTable> {
  $$Cid10TableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<String> get version =>
      $composableBuilder(column: $table.version, builder: (column) => column);

  Expression<T> favoritesTableRefs<T extends Object>(
    Expression<T> Function($$FavoritesTableTableAnnotationComposer a) f,
  ) {
    final $$FavoritesTableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.code,
      referencedTable: $db.favoritesTable,
      getReferencedColumn: (t) => t.cidCode,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$FavoritesTableTableAnnotationComposer(
            $db: $db,
            $table: $db.favoritesTable,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$Cid10TableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $Cid10TableTable,
          Cid10TableData,
          $$Cid10TableTableFilterComposer,
          $$Cid10TableTableOrderingComposer,
          $$Cid10TableTableAnnotationComposer,
          $$Cid10TableTableCreateCompanionBuilder,
          $$Cid10TableTableUpdateCompanionBuilder,
          (Cid10TableData, $$Cid10TableTableReferences),
          Cid10TableData,
          PrefetchHooks Function({bool favoritesTableRefs})
        > {
  $$Cid10TableTableTableManager(_$AppDatabase db, $Cid10TableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$Cid10TableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$Cid10TableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$Cid10TableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> code = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<String> version = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => Cid10TableCompanion(
                code: code,
                name: name,
                description: description,
                category: category,
                version: version,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String code,
                required String name,
                required String description,
                required String category,
                Value<String> version = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => Cid10TableCompanion.insert(
                code: code,
                name: name,
                description: description,
                category: category,
                version: version,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$Cid10TableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({favoritesTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (favoritesTableRefs) db.favoritesTable,
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (favoritesTableRefs)
                    await $_getPrefetchedData<
                      Cid10TableData,
                      $Cid10TableTable,
                      FavoritesTableData
                    >(
                      currentTable: table,
                      referencedTable: $$Cid10TableTableReferences
                          ._favoritesTableRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$Cid10TableTableReferences(
                            db,
                            table,
                            p0,
                          ).favoritesTableRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.cidCode == item.code),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$Cid10TableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $Cid10TableTable,
      Cid10TableData,
      $$Cid10TableTableFilterComposer,
      $$Cid10TableTableOrderingComposer,
      $$Cid10TableTableAnnotationComposer,
      $$Cid10TableTableCreateCompanionBuilder,
      $$Cid10TableTableUpdateCompanionBuilder,
      (Cid10TableData, $$Cid10TableTableReferences),
      Cid10TableData,
      PrefetchHooks Function({bool favoritesTableRefs})
    >;
typedef $$FavoritesTableTableCreateCompanionBuilder =
    FavoritesTableCompanion Function({
      required String cidCode,
      Value<bool> isFavorite,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });
typedef $$FavoritesTableTableUpdateCompanionBuilder =
    FavoritesTableCompanion Function({
      Value<String> cidCode,
      Value<bool> isFavorite,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

final class $$FavoritesTableTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $FavoritesTableTable,
          FavoritesTableData
        > {
  $$FavoritesTableTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $Cid10TableTable _cidCodeTable(_$AppDatabase db) =>
      db.cid10Table.createAlias(
        $_aliasNameGenerator(db.favoritesTable.cidCode, db.cid10Table.code),
      );

  $$Cid10TableTableProcessedTableManager get cidCode {
    final $_column = $_itemColumn<String>('cid_code')!;

    final manager = $$Cid10TableTableTableManager(
      $_db,
      $_db.cid10Table,
    ).filter((f) => f.code.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_cidCodeTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$FavoritesTableTableFilterComposer
    extends Composer<_$AppDatabase, $FavoritesTableTable> {
  $$FavoritesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<bool> get isFavorite => $composableBuilder(
    column: $table.isFavorite,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$Cid10TableTableFilterComposer get cidCode {
    final $$Cid10TableTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.cidCode,
      referencedTable: $db.cid10Table,
      getReferencedColumn: (t) => t.code,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$Cid10TableTableFilterComposer(
            $db: $db,
            $table: $db.cid10Table,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FavoritesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $FavoritesTableTable> {
  $$FavoritesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<bool> get isFavorite => $composableBuilder(
    column: $table.isFavorite,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$Cid10TableTableOrderingComposer get cidCode {
    final $$Cid10TableTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.cidCode,
      referencedTable: $db.cid10Table,
      getReferencedColumn: (t) => t.code,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$Cid10TableTableOrderingComposer(
            $db: $db,
            $table: $db.cid10Table,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FavoritesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $FavoritesTableTable> {
  $$FavoritesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<bool> get isFavorite => $composableBuilder(
    column: $table.isFavorite,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$Cid10TableTableAnnotationComposer get cidCode {
    final $$Cid10TableTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.cidCode,
      referencedTable: $db.cid10Table,
      getReferencedColumn: (t) => t.code,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$Cid10TableTableAnnotationComposer(
            $db: $db,
            $table: $db.cid10Table,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$FavoritesTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $FavoritesTableTable,
          FavoritesTableData,
          $$FavoritesTableTableFilterComposer,
          $$FavoritesTableTableOrderingComposer,
          $$FavoritesTableTableAnnotationComposer,
          $$FavoritesTableTableCreateCompanionBuilder,
          $$FavoritesTableTableUpdateCompanionBuilder,
          (FavoritesTableData, $$FavoritesTableTableReferences),
          FavoritesTableData,
          PrefetchHooks Function({bool cidCode})
        > {
  $$FavoritesTableTableTableManager(
    _$AppDatabase db,
    $FavoritesTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FavoritesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FavoritesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FavoritesTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> cidCode = const Value.absent(),
                Value<bool> isFavorite = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FavoritesTableCompanion(
                cidCode: cidCode,
                isFavorite: isFavorite,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String cidCode,
                Value<bool> isFavorite = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => FavoritesTableCompanion.insert(
                cidCode: cidCode,
                isFavorite: isFavorite,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$FavoritesTableTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({cidCode = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (cidCode) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.cidCode,
                                referencedTable: $$FavoritesTableTableReferences
                                    ._cidCodeTable(db),
                                referencedColumn:
                                    $$FavoritesTableTableReferences
                                        ._cidCodeTable(db)
                                        .code,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$FavoritesTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $FavoritesTableTable,
      FavoritesTableData,
      $$FavoritesTableTableFilterComposer,
      $$FavoritesTableTableOrderingComposer,
      $$FavoritesTableTableAnnotationComposer,
      $$FavoritesTableTableCreateCompanionBuilder,
      $$FavoritesTableTableUpdateCompanionBuilder,
      (FavoritesTableData, $$FavoritesTableTableReferences),
      FavoritesTableData,
      PrefetchHooks Function({bool cidCode})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$Cid10TableTableTableManager get cid10Table =>
      $$Cid10TableTableTableManager(_db, _db.cid10Table);
  $$FavoritesTableTableTableManager get favoritesTable =>
      $$FavoritesTableTableTableManager(_db, _db.favoritesTable);
}
