import 'package:flutter/material.dart';
import 'package:cid10_sukua/features/cid10/domain/entities/cid10_entity.dart';

class Cid10ListItem extends StatelessWidget {
  final Cid10Entity item;
  final VoidCallback onTap;
  final VoidCallback onFavoriteTap;

  const Cid10ListItem({
    super.key,
    required this.item,
    required this.onTap,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      leading: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: colorScheme.primary.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            item.code,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: colorScheme.primary,
              fontSize: 12,
            ),
          ),
        ),
      ),
      title: Text(
        item.name,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Text(
          item.category,
          style: TextStyle(
            fontSize: 12,
            color: colorScheme.onSurface.withValues(alpha: 0.6),
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      trailing: IconButton(
        icon: Icon(
          item.isFavorite ? Icons.favorite : Icons.favorite_border,
          color: item.isFavorite ? Colors.red : colorScheme.onSurface.withValues(alpha: 0.5),
        ),
        onPressed: onFavoriteTap,
      ),
      onTap: onTap,
    );
  }
}
