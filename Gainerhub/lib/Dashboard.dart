import 'package:flutter/material.dart';
import 'package:flutterviz/CRUD.dart';
import 'package:flutterviz/Detail.dart';
import 'package:flutterviz/Favorite.dart';
import 'package:flutterviz/Help.dart';
import 'package:flutterviz/Notification.dart';
import 'package:flutterviz/Profile.dart';
import 'package:flutterviz/Setting.dart';
import 'package:flutterviz/Splash.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Dashboard extends StatelessWidget {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF282A36),
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF1D1D1D),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: Text(
          "GainerHub",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 16),
          child: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
              size: 26,
            ),
            onPressed: () {
              _showMenu(context);
            },
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.redAccent,
                size: 26,
              ),
              onPressed: () {
                // Navigate to the FavoritePage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Favorite()),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.greenAccent,
                size: 26,
              ),
              onPressed: () {
                // Navigate to the CartPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CRUD()),
                );
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSearchBar(),
              _buildHorizontalList(context),
              _buildImageCarousel(context),
              _buildSectionTitle("FEATURED BRANDS"),
              _buildGridItems(context),
              _buildPromoBanner(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: TextField(
        controller: TextEditingController(),
        decoration: InputDecoration(
          hintText: "Search Here..",
          hintStyle: TextStyle(fontSize: 14, color: Color(0xFF585858)),
          filled: true,
          fillColor: Color(0xFFEBEBEC),
          prefixIcon: Icon(Icons.search, color: Color(0xFF585858)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.all(16),
        ),
      ),
    );
  }

  Widget _buildHorizontalList(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          _buildListItem(
              context,
              "assets/images/ba530d99-20a4-40d4-aec1-e345cc4af99f.jpg",
              "M1 First"),
          _buildListItem(
              context,
              "assets/images/cd4db24e-dcbd-4b5f-a0b4-c972d007c364.jpg",
              "Rimba Mass"),
          _buildListItem(context, "assets/images/img.png", "Evolene"),
          _buildListItem(context,
              "assets/images/id-11134207-7r98s-lve4h6q98ipba7.jpeg", "Provus"),
        ],
      ),
    );
  }

  Widget _buildListItem(BuildContext context, String imagePath, String title) {
    return GestureDetector(
      onTap: () {
        // Navigate to the Detail page when clicked
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Detail()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        width: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(
                imagePath,
                height: 80,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                title,
                style: TextStyle(fontSize: 14, color: Colors.black),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageCarousel(BuildContext context) {
    return SizedBox(
      height: 260,
      child: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Image.asset(
                "assets/images/BodyBuilder.jpeg",
                width: MediaQuery.of(context).size.width,
                height: 260, // Set a fixed height
                fit: BoxFit.cover,
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: WormEffect(
                  dotColor: Color(0xFF9E9E9E),
                  activeDotColor: Color(0xFF3A57E8),
                  dotHeight: 10,
                  dotWidth: 10,
                  spacing: 6,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 16, 0, 8),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildGridItems(BuildContext context) {
    return GridView(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.9,
      ),
      children: [
        _buildGridItem(
          context,
          "assets/images/346ab441-0814-46bc-a11e-b9627f65ec27.png",
          "Upto 15% Off",
          "Gift On All Orders",
        ),
        _buildGridItem(
          context,
          "assets/images/sg-11134201-23020-t8bqrg4zyinvfe.jpeg",
          "Upto 30% Off",
          "Free Creatine",
        ),
        _buildGridItem(
          context,
          "assets/images/ba530d99-20a4-40d4-aec1-e345cc4af99f.jpg",
          "Upto 9% Off",
          "",
        ),
        _buildGridItem(
          context,
          "assets/images/cd4db24e-dcbd-4b5f-a0b4-c972d007c364.jpg",
          "Flat 20% Off",
          "On All Flavours",
        ),
      ],
    );
  }

  Widget _buildGridItem(
      BuildContext context, String imagePath, String title, String subtitle) {
    return GestureDetector(
      onTap: () {
        // Navigate to the Detail page when clicked
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Detail()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color(0x4D9E9E9E)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                title,
                style: TextStyle(fontSize: 14, color: Color(0xFF3A57E8)),
              ),
            ),
            if (subtitle.isNotEmpty)
              Padding(
                padding: EdgeInsets.only(top: 6),
                child: Text(
                  subtitle,
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildPromoBanner(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Stack(
        children: [
          Image.asset(
            "assets/images/id-11134207-7r98s-lve4h6q98ipba7.jpeg",
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(8),
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Flat 50% Off",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3A57E8),
                    ),
                  ),
                  Text(
                    "On All Supplements",
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(16),
          color: Color(0xFF1D1D1D),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text("Home", style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.person, color: Colors.white),
                title: Text("Profile", style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.white),
                title: Text("Settings", style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.notifications, color: Colors.white),
                title: Text("Notifications", style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NotificationPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.help, color: Colors.white),
                title: Text("Help & Support", style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HelpSupportPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app, color: Colors.white),
                title: Text("Logout", style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Splash()),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
