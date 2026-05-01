import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cid10_sukua/features/cid10/presentation/providers/cid10_provider.dart';
import 'package:cid10_sukua/features/cid10/presentation/widgets/cid10_list_item.dart';
import 'package:cid10_sukua/features/cid10/presentation/screens/cid10_detail_screen.dart';

class Cid10SearchScreen extends StatefulWidget {
  const Cid10SearchScreen({super.key});

  @override
  State<Cid10SearchScreen> createState() => _Cid10SearchScreenState();
}

class _Cid10SearchScreenState extends State<Cid10SearchScreen> {
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(
        () => Provider.of<Cid10Provider>(context, listen: false)
            .onSearchChanged(_searchController.text));
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Cid10Provider>(context);
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('CID-10 Browser'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: colorScheme.primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            child: TextField(
              controller: _searchController,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Buscar por código, nome ou descrição...',
                hintStyle: TextStyle(color: Colors.white.withValues(alpha: 0.7)),
                prefixIcon: const Icon(Icons.search, color: Colors.white),
                filled: true,
                fillColor: Colors.white.withValues(alpha: 0.2),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              ),
            ),
          ),
          if (provider.categories.isNotEmpty)
            Container(
              height: 50,
              margin: const EdgeInsets.only(top: 12),
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  _buildFilterChip(provider, '', 'Todos', colorScheme),
                  ...provider.categories.map((cat) => _buildFilterChip(
                      provider, cat, cat.split(' ')[0], colorScheme)),
                ],
              ),
            ),
          if (provider.isLoading)
            LinearProgressIndicator(
              backgroundColor: colorScheme.primary.withValues(alpha: 0.2),
              valueColor: AlwaysStoppedAnimation<Color>(colorScheme.primary),
            ),
          Expanded(
            child: provider.items.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search_off,
                          size: 64,
                          color: colorScheme.primary.withValues(alpha: 0.5),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Nenhum resultado encontrado',
                          style: TextStyle(
                            fontSize: 16,
                            color: colorScheme.onSurface.withValues(alpha: 0.6),
                          ),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: provider.items.length,
                    itemBuilder: (context, index) {
                      final item = provider.items[index];
                      return Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: colorScheme.primary.withValues(alpha: 0.08),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Card(
                          margin: EdgeInsets.zero,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                            side: BorderSide(
                              color: colorScheme.primary.withValues(alpha: 0.1),
                              width: 1,
                            ),
                          ),
                          child: Cid10ListItem(
                            item: item,
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Cid10DetailScreen(item: item)),
                            ),
                            onFavoriteTap: () => provider.toggleFavorite(item.code),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip(
      Cid10Provider provider, String value, String label, ColorScheme colorScheme) {
    final isSelected = provider.selectedCategory == value;
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: FilterChip(
        label: Text(label),
        selected: isSelected,
        onSelected: (_) => provider.onCategorySelected(value),
        backgroundColor: colorScheme.surface,
        selectedColor: colorScheme.primary.withValues(alpha: 0.2),
        checkmarkColor: colorScheme.primary,
        labelStyle: TextStyle(
          color: isSelected ? colorScheme.primary : colorScheme.onSurface,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: isSelected ? colorScheme.primary : Colors.grey.shade300,
          ),
        ),
      ),
    );
  }
}
