// ignore_for_file: use_key_in_widget_constructors
import 'package:elvan/constants/app_theme.dart';
import 'package:flutter/material.dart';

class NavBarIcon extends StatelessWidget {
  final IconData icon;
  final IconData inactiveIcon;
  final String? label;
  final bool? labelOnActive;
  final bool darkMode;
  final bool active;
  final Function() onClick;

  const NavBarIcon({
    required this.icon,
    this.label,
    this.labelOnActive,
    required this.darkMode,
    required this.active,
    required this.inactiveIcon,
    required this.onClick,
  });

  Color _activeOpacity() {
    Color color;
    if (active) {
      color =  primaryColor;
    } else {
      color =  Colors.white;
    }
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Column(
        children:  [
          Container(
            height: 32,
            width: 64,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              color: active
                  ? Colors.white
                  : Colors.transparent,
            ),
            child: Icon(
              active ? icon : inactiveIcon,
              size: 24,
              color: _activeOpacity(),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          if (label != null)
            if (labelOnActive == null ||
                (labelOnActive == true && active == true))
              Text(
                label!,
                style: TextStyle(
                  fontSize: 12,
                  letterSpacing: 0.5,
                  color: _activeOpacity(),
                  fontWeight: FontWeight.w700,
                ),
              ),
        ],
      ),
    );
  }
}
