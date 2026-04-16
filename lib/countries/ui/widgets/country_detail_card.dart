import 'package:country_app_indra/countries/data/models/country_dto.dart';
import 'package:country_app_indra/countries/ui/widgets/info_row.dart';
import 'package:flutter/material.dart';

class CountryDetailCard extends StatelessWidget {
  const CountryDetailCard({
    super.key,
    required this.country,
    required this.onDemoPressed,
  });

  final CountryDto? country;
  final VoidCallback onDemoPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final capital = (country?.capital ?? const <String>[]).join(', ');
    final region = country?.region ?? '';
    final subregion = country?.subregion ?? '';
    final population = country?.population?.toString() ?? '';
    final currencies =
        country?.currencies?.values
            .map((c) => '${c.name ?? ''} (${c.symbol ?? ''})'.trim())
            .map((s) => s == '()' ? '' : s)
            .where((s) => s.trim().isNotEmpty)
            .toList(growable: false) ??
        const <String>[];
    final languages =
        country?.languages?.values.toList(growable: false) ?? const <String>[];

    final regionText = [
      region,
      if (subregion.isNotEmpty) subregion,
    ].where((s) => s.trim().isNotEmpty).join(' · ');

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 14),
      decoration: BoxDecoration(
        color: colorScheme.surface.withValues(alpha: 0.92),
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 18,
            offset: const Offset(0, 10),
          ),
        ],
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Detalle',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Text(
                country?.cca3 ?? '',
                style: theme.textTheme.labelLarge?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          InfoRow(icon: Icons.public, label: 'Región', value: regionText),
          const SizedBox(height: 10),
          InfoRow(icon: Icons.location_city, label: 'Capital', value: capital),
          const SizedBox(height: 10),
          InfoRow(
            icon: Icons.people_alt_outlined,
            label: 'Población',
            value: population,
          ),
          const SizedBox(height: 10),
          InfoRow(
            icon: Icons.payments_outlined,
            label: 'Moneda',
            value: currencies.join(', '),
          ),
          const SizedBox(height: 10),
          InfoRow(
            icon: Icons.translate,
            label: 'Idiomas',
            value: languages.join(', '),
          ),
          const SizedBox(height: 14),
          FilledButton.icon(
            onPressed: onDemoPressed,
            icon: const Icon(Icons.bolt),
            label: const Text('Navegar a Detalles'),
          ),
        ],
      ),
    );
  }
}
