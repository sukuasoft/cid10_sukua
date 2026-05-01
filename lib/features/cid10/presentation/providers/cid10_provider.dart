import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cid10_sukua/features/cid10/domain/entities/cid10_entity.dart';
import 'package:cid10_sukua/features/cid10/domain/repositories/cid10_repository.dart';

class Cid10Provider extends ChangeNotifier {
  final Cid10Repository repository;
  List<Cid10Entity> _items = [];
  List<String> _categories = [];
  String _selectedCategory = '';
  String _searchQuery = '';
  bool _isLoading = false;
  Timer? _debounce;

  Cid10Provider(this.repository) {
    _init();
  }

  List<Cid10Entity> get items => _items;
  List<String> get categories => _categories;
  String get selectedCategory => _selectedCategory;
  bool get isLoading => _isLoading;

  Future<void> _init() async {
    _isLoading = true;
    notifyListeners();
    _categories = await repository.getCategories();
    _items = await repository.search('');
    _isLoading = false;
    notifyListeners();
  }

  void onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () async {
      _searchQuery = query;
      _isLoading = true;
      notifyListeners();
      _items = await repository.search(query);
      if (_selectedCategory.isNotEmpty) {
        _items = _items.where((e) => e.category == _selectedCategory).toList();
      }
      _isLoading = false;
      notifyListeners();
    });
  }

  void onCategorySelected(String category) {
    _selectedCategory = category;
    _applyFilters();
  }

  void _applyFilters() async {
    _isLoading = true;
    notifyListeners();
    _items = await repository.search(_searchQuery);
    if (_selectedCategory.isNotEmpty) {
      _items = _items.where((e) => e.category == _selectedCategory).toList();
    }
    _isLoading = false;
    notifyListeners();
  }

  Future<void> toggleFavorite(String code) async {
    await repository.toggleFavorite(code);
    final index = _items.indexWhere((e) => e.code == code);
    if (index != -1) {
      _items[index] = _items[index].copyWith(
        isFavorite: !_items[index].isFavorite,
      );
      notifyListeners();
    }
  }
}
