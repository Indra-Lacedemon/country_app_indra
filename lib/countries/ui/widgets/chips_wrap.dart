import 'package:flutter/material.dart';

class ChipsWrap extends StatelessWidget {
  const ChipsWrap({
    super.key,
    required this.values,
    this.placeholder = '—',
  });

  final List<String> values;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final clean = values.map((e) => e.trim()).where((e) => e.isNotEmpty).toList();

    if (clean.isEmpty) {
      return Text(
        placeholder,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w700,
            ),
      );
    }

    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: clean.map((v) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: colorScheme.secondaryContainer.withValues(alpha: 0.55),
            borderRadius: BorderRadius.circular(999),
            border: Border.all(
              color: colorScheme.outlineVariant.withValues(alpha: 0.6),
            ),
          ),
          child: Text(
            v,
            style: TextStyle(
              color: colorScheme.onSecondaryContainer,
              fontWeight: FontWeight.w700,
            ),
          ),
        );
      }).toList(growable: false),
    );
  }
}
