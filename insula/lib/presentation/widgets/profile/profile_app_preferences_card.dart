import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';
import 'profile_base_components.dart';

class ProfileAppPreferencesCard extends StatelessWidget {
  final String theme;
  final String language;
  final ValueChanged<String?> onThemeChanged;
  final ValueChanged<String?> onLanguageChanged;

  const ProfileAppPreferencesCard({
    super.key,
    required this.theme,
    required this.language,
    required this.onThemeChanged,
    required this.onLanguageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileBaseComponents.buildSectionTitle('Uygulama Tercihleri'),
        ProfileBaseComponents.buildAccentCard(
          accent: AppColors.accentTeal,
          child: Column(
            children: [
              _buildThemeField(),
              const SizedBox(height: 8),
              _buildLanguageField(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildThemeField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileBaseComponents.buildLabel('Tema'),
        DropdownButtonFormField<String>(
          value: theme,
          isExpanded: true,
          decoration: ProfileBaseComponents.dropdownDecoration('Tema Seçiniz'),
          items: const [
            DropdownMenuItem(value: 'Açık', child: Text('Açık')),
            DropdownMenuItem(value: 'Koyu', child: Text('Koyu')),
            DropdownMenuItem(value: 'Sistem', child: Text('Sistem')),
          ],
          onChanged: onThemeChanged,
        ),
      ],
    );
  }

  Widget _buildLanguageField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileBaseComponents.buildLabel('Dil'),
        DropdownButtonFormField<String>(
          value: language,
          isExpanded: true,
          decoration: ProfileBaseComponents.dropdownDecoration('Dil Seçiniz'),
          items: const [
            DropdownMenuItem(value: 'Türkçe', child: Text('Türkçe')),
            DropdownMenuItem(value: 'English', child: Text('English')),
            DropdownMenuItem(value: 'Deutsch', child: Text('Deutsch')),
          ],
          onChanged: onLanguageChanged,
        ),
      ],
    );
  }
}
