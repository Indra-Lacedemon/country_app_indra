import 'package:flutter/material.dart';

class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    this.placeholder = '—',
  });

  final IconData icon;
  final String label;
  final String value;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final effectiveValue = value.trim().isEmpty ? placeholder : value.trim();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 18, color: colorScheme.onSurfaceVariant),
        const SizedBox(width: 10),
        SizedBox(
          width: 92,
          child: Text(
            label,
            style: theme.textTheme.labelLarge?.copyWith(
              color: colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            effectiveValue,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
