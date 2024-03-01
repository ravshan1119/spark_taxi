import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:spark_taxi/src/config/router/app_routes.dart';
import 'package:spark_taxi/src/data/datasources/remote/api_repository.dart';
import 'package:spark_taxi/src/data/datasources/remote/api_service.dart';
import 'package:spark_taxi/src/domain/models/hive/note.dart';
import 'package:spark_taxi/src/presentation/blocs/get_data/get_data_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  await Hive.initFlutter();
  Hive.registerAdapter(NoteAdapter());
  await Hive.openBox<Note>('notes');
  runApp(
    App(
      apiService: ApiService(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key, required this.apiService});

  final ApiService apiService;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => ApiRepository(apiService: apiService),
          )
        ],
        child: MultiBlocProvider(providers: [
          BlocProvider(
              create: (context) =>
                  GetDataBloc(ApiRepository(apiService: apiService))),
        ], child: const MainApp()));
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRoutes.generateRoute,
        );
      },
    );
  }
}
