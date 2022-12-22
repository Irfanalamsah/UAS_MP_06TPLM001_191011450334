import 'package:uas/cubit/beritacubit.dart';
import 'package:uas/screen/DetailBeritaScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BeritaScreen extends StatefulWidget {
  const BeritaScreen({super.key});

  @override
  State<BeritaScreen> createState() => _BeritaScreenState();
}

class _BeritaScreenState extends State<BeritaScreen> {
  final BeritaCubit beritaCubit = BeritaCubit();

  @override
  void initState() {
    beritaCubit.getDataBerita();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('191011450334 - IRFAN ALAMSAH'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              color: Colors.grey[200],
              height: 100,
              width: 100,
              child: Image.network(
                  'https://cdn0-production-images-kly.akamaized.net/OdMmSOPlFrNEXsiG4RhI0sDdNi4=/1280x720/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/18924/original/google-130724c.jpg'),
            ),
            title: Text('Android Akan Dilengkapi Fitur Sensor Gerak?'
                /*beritaCubit.beritaModel.results![index].title!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),*/
                ),
            subtitle: Text('12 - 21 - 2022'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (c) => DetailBeritaScreen()));
            },
          );
        },
      ),
    );
  }
}
