
import 'package:evals2/pages/Registro.dart';
import 'package:evals2/pages/acercade.dart';
import 'package:evals2/pages/consultar.dart';
import 'package:evals2/views/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  State<home> createState() => homeState();
}

class homeState extends State<home> {
  int ItemDrawer = 0;

  _getDrawerItem(int position) {
    switch (position) {
       case 1:
        return Registro();

         case 2:
        return Consulta();

         case 3:
        return Acercade();
    }
  }

  void _onSelectItemDrawer(int pos) {
    Navigator.pop(context);
    setState(() {
      ItemDrawer = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('EVALUACIÓN 2'),
      ),
      //agregar un aimagen
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Center(
                child: Text(
                  'MENÚ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Divider(color: Colors.red),
            ListTile(
              leading: Icon(Icons.account_box_outlined),
              title: Text('Acerca de nosotros'),
              onTap: () {
                _onSelectItemDrawer(3);
              },
            ),
            ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Registrar'),
                onTap: () {
                  _onSelectItemDrawer(1);
                }),
            ListTile(
                leading: Icon(Icons.construction),
                title: Text('Consultar'),
                onTap: () {
                  _onSelectItemDrawer(2);
                }),
            Divider(color: Colors.red),
            ListTile(
                leading: Icon(Icons.close),
                title: Text('Cerrar sesión'),
                onTap: () {
                  FirebaseAuth.instance.signOut();
                   MaterialPageRoute(builder:(context)=> LoginPage());
                }),
          ],
        ),
      ),
      body:
       _getDrawerItem(ItemDrawer),
       
      
       
      );
  }
}