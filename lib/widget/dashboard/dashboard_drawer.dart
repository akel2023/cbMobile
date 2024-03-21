// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:cbmobile/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashBoardDrawer extends StatelessWidget {
  const DashBoardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final tempAuth = Provider.of<AuthProvider>(context, listen: true);

    return Drawer(
      elevation: 16,
      backgroundColor: Colors.black,
      shadowColor: const Color.fromARGB(255, 65, 56, 56),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 24, 21, 21),
            ),
            child: Text(
              'Menü',
              style: TextStyle(color: Colors.amber),
            ),
          ),
          ListTile(
            title: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/barcode');
              },
              style: ElevatedButton.styleFrom(
                alignment: Alignment.center,
                backgroundColor: Color(0xFFF8931D),
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Container(
                width: 400,
                height: 44,
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'Fiyat Sorgula - Barkod',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Plus Jakarta Sans',
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                //color: Color(0xFFF8931D),
              ),
            ),
            // title: const Text('Item 1'),
            // onTap: () {
            //   // Update the state of the app
            //   // ...
            //   // Then close the drawer
            //   Navigator.pop(context);
            // },
          ),
          ListTile(
            title: ElevatedButton(
              onPressed: () async {
                await tempAuth.logout();
                //Navigator.of(context).pushNamed('/barcode');
              },
              style: ElevatedButton.styleFrom(
                alignment: Alignment.center,
                backgroundColor: Color(0xFFF8931D),
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Container(
                width: 400,
                height: 44,
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'Çıkış',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Plus Jakarta Sans',
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                //color: Color(0xFFF8931D),
              ),
            ),
            // title: const Text('Item 1'),
            // onTap: () {
            //   // Update the state of the app
            //   // ...
            //   // Then close the drawer
            //   Navigator.pop(context);
            // },
          ),
        ],
      ),
    );
  }
}
