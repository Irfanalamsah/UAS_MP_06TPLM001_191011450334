import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailBeritaScreen extends StatefulWidget {
  const DetailBeritaScreen({super.key});

  @override
  _DetailBeritaScreenState createState() => _DetailBeritaScreenState();
}

class _DetailBeritaScreenState extends State<DetailBeritaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('191011450334 - IRFAN ALAMSAH'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 200,
              color: Colors.grey[200],
              child: Image.network(
                  'https://cdn0-production-images-kly.akamaized.net/OdMmSOPlFrNEXsiG4RhI0sDdNi4=/1280x720/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/18924/original/google-130724c.jpg'),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text('title'),
                  SizedBox(
                    height: 10,
                  ),
                  Text('content'),
                  Divider(),
                  Text('Autor'),
                  Text('Sumber'),
                ],
              ),
            )
          ],
        ));
  }
}
