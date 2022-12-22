import 'package:dio/dio.dart';
import '../model/beritamodel.dart';

class BeritaRequest {
  Future<BeritaModel> getBerita() async {
    Response response = await Dio()
        .get('https://api-berita-indonesia.vercel.app/antara/terbaru');
    return BeritaModel.fromJson(response.data);
  }
}
