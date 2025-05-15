import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';


class Sidebar extends StatelessWidget {
  final List<_NavItem> _items = [
    _NavItem('Home', Icons.home, '/home'),
    _NavItem('Analytics', Icons.bar_chart, '/analytics'),
    _NavItem('Settings', Icons.settings, '/settings'),
    _NavItem('Profile', Icons.person, '/profile'),
  ];

  Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    final String location = GoRouterState.of(context).location;
    return Container(
      width: 250,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          Text('MyDashboard', style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 30),
          ..._items.map((item) => ListTile(
            leading: Icon(item.icon, color: location == item.route ? Colors.blue.shade800 : Colors.grey),
            title: Text(item.label, style: GoogleFonts.poppins(fontSize: 16)),
            selected: location == item.route,
            onTap: () => context.go(item.route),
          )),
        ],
      ),
    );
  }
}

class _NavItem {
  final String label;
  final IconData icon;
  final String route;
  _NavItem(this.label, this.icon, this.route);
}