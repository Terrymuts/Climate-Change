import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String location = GoRouter.of(context).location;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(child: Text('Menu'), decoration: BoxDecoration(color: Colors.blue)),
          _buildItem(context, '/home', Icons.home, 'Home', location),
          _buildItem(context, '/classify', Icons.image, 'Classify', location),
        ],
      ),
    );
  }

  Widget _buildItem(BuildContext context, String path, IconData icon, String label, String location) {
    final bool selected = (location == path);
    return ListTile(
      leading: Icon(icon, color: selected ? Colors.blue : null),
      title: Text(label, style: TextStyle(color: selected ? Colors.blue : null)),
      selected: selected,
      onTap: () => GoRouter.of(context).go(path),
    );
  }
}
