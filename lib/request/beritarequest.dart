import 'package:uas/model/beritamodel.dart';
import 'package:dio/dio.dart';

class BeritaRequest {
  Future<BeritaModel> getBerita() async {
    Response response = await Dio()
        .get('https://api-berita-indonesia.vercel.app/antara/terbaru');
    return BeritaModel.fromJson(response.data);
  }
}
