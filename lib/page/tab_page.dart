import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TabPage extends StatelessWidget {
  final Widget child;

  const TabPage({super.key, required this.child});

  static final List<_TabInfo> _tabs = [
    const _TabInfo(label: 'ホーム', icon: Icons.home, path: '/'),
    const _TabInfo(label: 'タイムライン', icon: Icons.timeline, path: '/timeline'),
    const _TabInfo(label: '探す', icon: Icons.search, path: '/workbook/search'),
    const _TabInfo(label: 'レポート', icon: Icons.analytics, path: '/report'),
    const _TabInfo(label: '設定', icon: Icons.settings, path: '/setting'),
  ];

  int _locationToTabIndex(String location) {
    final uri = Uri.parse(location);
    final path = uri.path;

    for (int i = 0; i < _tabs.length; i++) {
      if (path == _tabs[i].path || path.startsWith('${_tabs[i].path}/')) {
        return i;
      }
    }

    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    final currentIndex = _locationToTabIndex(location);

    return Scaffold(
      appBar: AppBar(
        title: Text(_tabs[currentIndex].label),
      ),
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: _tabs
            .map((tab) => BottomNavigationBarItem(
                  icon: Icon(tab.icon),
                  label: tab.label,
                ))
            .toList(),
        onTap: (index) {
          context.go(_tabs[index].path);
        },
      ),
    );
  }
}

class _TabInfo {
  final String label;
  final IconData icon;
  final String path;

  const _TabInfo({
    required this.label,
    required this.icon,
    required this.path,
  });
}
