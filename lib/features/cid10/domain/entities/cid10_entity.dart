class Cid10Entity {
  final String code;
  final String name;
  final String description;
  final String category;
  final String version;
  final bool isFavorite;

  const Cid10Entity({
    required this.code,
    required this.name,
    required this.description,
    required this.category,
    this.version = 'CID-10',
    this.isFavorite = false,
  });

  Cid10Entity copyWith({
    String? code,
    String? name,
    String? description,
    String? category,
    String? version,
    bool? isFavorite,
  }) =>
      Cid10Entity(
        code: code ?? this.code,
        name: name ?? this.name,
        description: description ?? this.description,
        category: category ?? this.category,
        version: version ?? this.version,
        isFavorite: isFavorite ?? this.isFavorite,
      );
}
