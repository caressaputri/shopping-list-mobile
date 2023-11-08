import 'package:flutter/material.dart';
import 'package:shopping_list/menu.dart'; // Sesuaikan path menu.dart
import 'package:shopping_list/shoplist_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              children: [
              Text(
              'Shopping List',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Padding(padding: EdgeInsets.all(10),
              Text(
                "Catat seluruh keperluan belanjamu di sini!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text('Halaman Utama'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(), // Pastikan ini adalah halaman utama yang benar
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.add_shopping_cart),
            title: Text('Tambah Produk'),
            onTap: () {
              // Tambahkan routing ke halaman ShopFormPage setelah dibuat
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const ShopFormPage()));
            },
          ),
        ],
      ),
    );
  }
}
