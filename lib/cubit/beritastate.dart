part of 'beritacubit.dart';

@immutable
abstract class BeritaState {}

class BeritaInitial extends BeritaState {}

class DataBerita extends BeritaState {
  final BeritaModel data;
  DataBerita(this.data);
}
