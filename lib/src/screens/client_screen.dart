
import 'package:flutter/material.dart';


class ClientScreen extends StatelessWidget {
  const ClientScreen({Key? key}): super(key: key);

  @override  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola, YANIEZ', style: TextStyle(fontSize: 18)),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon( Icons.search ),
          ),
        ]
      ),
      body: const Center(
        child: Text("ClientScreen"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem( icon: Icon( Icons.home_outlined ), label: "Home" ),
          BottomNavigationBarItem( icon: Icon( Icons.shopping_cart_outlined ), label: "Carrito" ),
          BottomNavigationBarItem( icon: Icon( Icons.account_box_outlined ), label: "Mi cuenta" ),
        ]
      ),
    );
  }
}
