import 'package:flutter/material.dart';

class NavigationContext with ChangeNotifier {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void setSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners(); // Notifie tous les widgets qui écoutent ce changement
  }
}
