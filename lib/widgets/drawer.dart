import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snap_shop/utils/appconstant.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _buildHeader(),
          _buildItem(
            icon: CupertinoIcons.person,
            title: 'Profile',
            onTap: () => {},
          ),
          _buildItem(
            icon: CupertinoIcons.home,
            title: 'Home',
            onTap: () => {},
          ),
          _buildItem(
            icon: CupertinoIcons.tag,
            title: 'Product',
            onTap: () => {},
          ),
          _buildItem(
            icon: CupertinoIcons.cart,
            title: 'Order',
            onTap: () => {},
          ),
          _buildItem(
            icon: CupertinoIcons.phone,
            title: 'Contact',
            onTap: () => {},
          ),
          _buildItem(
            icon: Icons.settings,
            title: 'Setting',
            onTap: () => {},
          ),
          _buildItem(
            icon: CupertinoIcons.arrow_right_circle,
            title: 'Logout',
            onTap: () => {},
          ),
        ],
      ),
    );
  }

  _buildHeader() {
    return const DrawerHeader(
      decoration: BoxDecoration(color: AppConstant.appMainColor),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media.licdn.com/dms/image/v2/D4D03AQFXDqD74pSGZg/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1698297006851?e=1732752000&v=beta&t=-uJSgEeqLBea92wcFFM-Qf3HgeWg4rpuhtUlD9eFLqc'),
            radius: 40,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Sikandar Afridi',
            style: TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      ),
    );
  }

  _buildItem(
      {required IconData icon,
      required String title,
      required GestureTapCallback onTap}) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
      minLeadingWidth: 5,
    );
  }
}
