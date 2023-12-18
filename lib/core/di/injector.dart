import 'package:complex_ui_assignment/data/local_data_source/local_data_source.dart';
import 'package:get_it/get_it.dart';

class Injector {
  static Future<void> injectorFunction() async {
    GetIt.I.registerLazySingleton<LocalDataSource>(
      () => LocalDataSource(),
    );
  }
}
