import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cid10_sukua/core/database/app_database.dart';
import 'package:cid10_sukua/features/cid10/data/datasources/cid10_local_datasource.dart';
import 'package:cid10_sukua/features/cid10/data/repositories/cid10_repository_impl.dart';
import 'package:cid10_sukua/features/cid10/presentation/providers/cid10_provider.dart';
import 'package:cid10_sukua/features/cid10/presentation/screens/cid10_search_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final db = AppDatabase();
  await db.seedDatabaseIfNeeded();

  final datasource = Cid10LocalDatasource(db);
  final repository = Cid10RepositoryImpl(datasource);
  final provider = Cid10Provider(repository);

  runApp(MyApp(provider: provider));
}

class MyApp extends StatelessWidget {
  final Cid10Provider provider;

  const MyApp({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Cid10Provider>.value(
      value: provider,
      child: MaterialApp(
        title: 'CID-10 Sukua',
        theme: ThemeData(
          primarySwatch: Colors.green,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF2E7D32),
            brightness: Brightness.light,
          ),
          useMaterial3: true,
          cardTheme: CardThemeData(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        home: const Cid10SearchScreen(),
      ),
    );
  }
}
