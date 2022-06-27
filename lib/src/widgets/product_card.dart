
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key, 
    required this.url
  }): super(key: key);

  final String url;

  @override  
  Widget build(BuildContext context){
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
      elevation: 2.5,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ImageCard(url: url),
          _Description()
        ],
      ),
    );
  }
}

class _ImageCard extends StatelessWidget {
  const _ImageCard({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      image: NetworkImage(url),
      placeholder: AssetImage('assets/no_image.png'),
      height: 150,
      width: 140,
      fit: BoxFit.cover,
    );
  }
}

class _Description extends StatelessWidget {
  const _Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(
            width: (MediaQuery.of(context).size.width - 180),
            child: Text(
              'Aceituna gringa de Puno', 
              style: TextStyle(fontSize: 18, fontWeight:  FontWeight.w400), 
              overflow: TextOverflow.ellipsis, 
              maxLines: 2
              ),
          ),

          SizedBox(height:5),

          Text(
            'Tienda la paradita', 
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.green, fontFamily: 'Calibri')
          ),

          SizedBox(height:12),

          Row(
            children: [
              Icon(Icons.store, color: Colors.green, size: 20),
              SizedBox(width: 10),
              Text('S/. 3.70', style: TextStyle(fontWeight: FontWeight.bold)),
            ]
          ),

          SizedBox(height:8),

          Text('En stock', style: TextStyle(fontSize: 10, color: Colors.green, fontWeight: FontWeight.bold)),
        ]
      ),
    );
  }
}
