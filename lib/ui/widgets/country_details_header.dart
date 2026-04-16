import 'package:flutter/material.dart';

class CountryDetailsHeader extends StatelessWidget {
  const CountryDetailsHeader({
    super.key,
    required this.flag,
    required this.officialName,
    required this.commonName,
    required this.codeLine,
  });

  final String flag;
  final String officialName;
  final String commonName;
  final String codeLine;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.75),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.6),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 56,
            height: 56,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: colorScheme.surface.withValues(alpha: 0.9),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: colorScheme.outlineVariant.withValues(alpha: 0.55),
              ),
            ),
            child: Text(flag, style: const TextStyle(fontSize: 24)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  officialName,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w900,
                    letterSpacing: -0.2,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  commonName,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer.withValues(alpha: 0.6),
                    borderRadius: BorderRadius.circular(999),
                    border: Border.all(
                      color: colorScheme.outlineVariant.withValues(alpha: 0.55),
                    ),
                  ),
                  child: Text(
                    codeLine,
                    style: TextStyle(
                      color: colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
