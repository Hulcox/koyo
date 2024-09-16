import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:koyo/context/navigation_context.dart';
import 'package:koyo/ui/view/add_view.dart';
import 'package:koyo/ui/view/calendar_view.dart';
import 'package:koyo/ui/view/home_view.dart';
import 'package:koyo/ui/view/lists_view.dart';
import 'package:provider/provider.dart';

const backGroundColor = Color.fromARGB(255, 42, 42, 42);
const colorBox = Color.fromARGB(255, 60, 60, 67);

void main() {
  initializeDateFormatting().then((_) => runApp(
        ChangeNotifierProvider(
          create: (_) =>
              NavigationContext(), // Fournit NavigationProvider à tout l'arbre de widgets
          child: const MainView(),
        ),
      ));
}

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: backGroundColor,
        appBar: AppBar(
          title: const Text("Koyo"),
          backgroundColor: backGroundColor,
          elevation: 0,
        ),
        body: Consumer<NavigationContext>(
          builder: (context, navigationContext, _) {
            return [
              const HomeView(),
              const CalendarView(),
              const AddView(),
              const ListsView(),
            ][navigationContext.selectedIndex];
          },
        ),
        bottomNavigationBar: Container(
          color: const Color.fromARGB(255, 32, 32, 32),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Consumer<NavigationContext>(
              builder: (context, navigationContext, _) {
                return GNav(
                  backgroundColor: const Color.fromARGB(255, 32, 32, 32),
                  color: Colors.white,
                  activeColor: Colors.white,
                  tabBackgroundColor: const Color.fromARGB(100, 60, 60, 67),
                  gap: 8,
                  padding: const EdgeInsets.all(16),
                  selectedIndex: navigationContext.selectedIndex,
                  onTabChange: (index) {
                    navigationContext.setSelectedIndex(index);
                  },
                  tabs: const [
                    GButton(
                      icon: Icons.dashboard_rounded,
                      text: 'Accueil',
                    ),
                    GButton(
                      icon: Icons.calendar_month,
                      text: 'Agenda',
                    ),
                    GButton(
                      icon: Icons.add_circle,
                      text: 'Ajouter',
                    ),
                    GButton(
                      icon: Icons.list,
                      text: 'Liste',
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
