part of 'widgets.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final HomeController _homeController = Get.find();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.black.withOpacity(0.8),
          elevation: 0,
          selectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(color: whiteColor),
          unselectedItemColor: Colors.grey,
          currentIndex: _homeController.selectedIndex.value,
          selectedLabelStyle: textWhiteNavBar,
          unselectedLabelStyle: textWhiteNavBar,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            _homeController.changeIndex(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5, top: 5),
                child: Image(
                  width: 21,
                  image: AssetImage("assets/icon_home.png"),
                ),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5, top: 5),
                child: Image(
                  width: 21,
                  image: AssetImage("assets/icon_search_nonactive.png"),
                ),
              ),
              label: "Cari",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5, top: 5),
                child: Image(
                  width: 21,
                  image: AssetImage("assets/icon_library_nonactive.png"),
                ),
              ),
              label: "Koleksi Kamu",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5, top: 5),
                child: Image(
                  width: 21,
                  image: AssetImage("assets/logo_nonactive.png"),
                ),
              ),
              label: "Premium",
            ),
          ],
        ),
      ),
    );
  }
}
