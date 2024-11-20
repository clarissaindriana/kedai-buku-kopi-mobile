import 'package:flutter/material.dart';
import 'package:kedai_buku_kopi_mobile/screens/list_productentry.dart';
import 'package:kedai_buku_kopi_mobile/screens/menu.dart';
import 'package:kedai_buku_kopi_mobile/screens/productentry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            // Bagian drawer header
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: const Column(
              children: [
                Text(
                  'Kedai Buku Kopi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(8)),
                Text("Books and Coffee to spend your morning with!",
                    // Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    )),
              ],
            ),
          ),
          // Bagian routing
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('Tambah Product'),
            // Bagian redirection ke ProductEntryFormPage
            onTap: () {
              /*
              Buatlah routing ke ProductEntryFormPage di sini,
              setelah halaman ProductEntryFormPage sudah dibuat.
              */
              Navigator.pop(context); // Menutup drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductEntryFormPage(),
                ),
              );
            },
          ),

          ListTile(
            leading: const Icon(Icons.add_reaction_rounded),
            title: const Text('Daftar Product'),
            onTap: () {
              // Route menu ke halaman Product
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProductEntryPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
