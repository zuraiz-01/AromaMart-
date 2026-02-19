import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.outlined = false,
    this.icon,
  });

  final String label;
  final VoidCallback onPressed;
  final bool outlined;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final fg = outlined ? colorScheme.primary : Colors.white;

    return SizedBox(
      height: 48,
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: icon == null
            ? const SizedBox.shrink()
            : Icon(icon, size: 18, color: fg),
        label: Text(
          label.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: fg,
            fontSize: 12,
          ),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          backgroundColor: outlined ? Colors.transparent : colorScheme.primary,
          foregroundColor: fg,
          elevation: outlined ? 0 : 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
            side: outlined
                ? BorderSide(color: colorScheme.primary.withValues(alpha: 0.7))
                : BorderSide.none,
          ),
        ),
      ),
    );
  }
}
