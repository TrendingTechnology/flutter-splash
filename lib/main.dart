import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_splash/ui/app_theme.dart';
import 'package:flutter_splash/ui/page/collection_page.dart';
import 'package:flutter_splash/ui/page/home_page.dart';
import 'package:flutter_splash/ui/page/profile_page.dart';
import 'package:flutter_splash/ui/page/search_page.dart';
import 'package:flutter_splash/ui/page/upload_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int themeIndex = prefs.getInt(AppTheme.themeKey) ?? 0;
  runApp(Application(themeIndex));
}

class Application extends StatelessWidget {
  final int themeIndex;

  Application(this.themeIndex);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Splash',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.values[themeIndex],
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: EntryPoint(),
    );
  }
}

class EntryPoint extends StatefulWidget {
  EntryPoint({Key? key}) : super(key: key);

  @override
  _EntryPointState createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint> {
  int _index = 0;
  List<Widget> _pages = List.of([
    HomePage(),
    CollectionPage(),
    UploadPage(),
    SearchPage(),
    ProfilePage()
  ]);
  List<BottomNavigationBarItem> _bottomNavigationBarItems = List.of([
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(
        icon: Icon(Icons.bookmarks_rounded), label: "Collections"),
    BottomNavigationBarItem(icon: Icon(Icons.upload_file), label: "Upload"),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
  ]);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageTransitionSwitcher(
              transitionBuilder: (Widget child,
                  Animation<double> primaryAnimation,
                  Animation<double> secondaryAnimation) {
                return FadeThroughTransition(
                  animation: primaryAnimation,
                  secondaryAnimation: secondaryAnimation,
                  child: child,
                );
              },
              child: _pages[_index])),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onBottomNavTap,
        currentIndex: _index,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: _bottomNavigationBarItems,
      ),
    );
  }

  void _onBottomNavTap(int value) => setState(() => _index = value);
}
