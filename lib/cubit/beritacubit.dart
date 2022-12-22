import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:uas/model/beritamodel.dart';
import 'package:uas/request/beritarequest.dart';

part 'beritastate.dart';

class BeritaCubit extends Cubit<BeritaState> {
  BeritaCubit() : super(BeritaInitial());

  final BeritaRequest beritaRequest = BeritaRequest();

  BeritaModel beritaModel = BeritaModel();

  getDataBerita() async {
    emit(BeritaInitial());
    beritaModel = await beritaRequest.getBerita();
    emit(DataBerita(beritaModel));
  }
}
