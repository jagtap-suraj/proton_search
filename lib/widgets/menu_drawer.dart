import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  ListTile _buildSectionTitle(String title) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 13),
      ),
      onTap: () {
        // Navigate to the corresponding screen or perform an action.
      },
    );
  }

  ListTile _buildMenuItem(String title) {
    return ListTile(
      title: Text('  $title', style: const TextStyle(fontSize: 14)),
      onTap: () {
        // Navigate to the corresponding screen or perform an action.
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Drawer(
      width: size.width * 0.5,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildSectionTitle('Product'),
            _buildMenuItem('Proton Main'),
            _buildMenuItem('Proton Calendar'),
            _buildMenuItem('Proton VPN'),
            _buildMenuItem('Proton Pass'),
            _buildMenuItem('Proton Driver'),
            const Divider(),
            _buildSectionTitle('Who we are'),
            _buildMenuItem('About us'),
            _buildMenuItem('Team'),
            _buildMenuItem('Impact'),
            _buildMenuItem('Community'),
            _buildMenuItem('Open source'),
            _buildMenuItem('Careers'),
            const Divider(),
            _buildSectionTitle('Resource & Support'),
            _buildMenuItem('Switch to Proton'),
            _buildMenuItem('Blog'),
            _buildMenuItem('News'),
            _buildMenuItem('Help & Support'),
            const Divider(),
            _buildSectionTitle('For Business'),
          ],
        ),
      ),
    );
  }
}
