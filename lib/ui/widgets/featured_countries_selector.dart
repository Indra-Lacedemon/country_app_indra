import 'package:flutter/material.dart';

class FeaturedCountriesSelector extends StatelessWidget {
  const FeaturedCountriesSelector({
    super.key,
    required this.countries,
    required this.selectedKey,
    required this.onSelected,
  });

  final List<String> countries;
  final String? selectedKey;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.75),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.6),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Países destacados',
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: countries.map((name) {
              final isSelected =
                  (selectedKey ?? '').toLowerCase() == name.toLowerCase();

              return ChoiceChip(
                label: Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: isSelected
                        ? colorScheme.onPrimary
                        : colorScheme.onSurface,
                  ),
                ),
                selected: isSelected,
                showCheckmark: false,
                selectedColor: colorScheme.primary,
                backgroundColor: colorScheme.surface.withValues(alpha: 0.9),
                side: BorderSide(
                  color: isSelected
                      ? colorScheme.primary
                      : colorScheme.outlineVariant.withValues(alpha: 0.6),
                ),
                onSelected: (_) => onSelected(name),
              );
            }).toList(growable: false),
          ),
        ],
      ),
    );
  }
}
