import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik_app/config/theme/app.theme.dart';
import 'package:toktik_app/infraestructure/datasources/local_video_datasource_impl.dart';
import 'package:toktik_app/infraestructure/repositories/video_post_repository_impl.dart';
import 'package:toktik_app/presentation/screens/discover_screen.dart';
import 'package:toktik_app/presentation/providers/discover_providers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository =
        VideoPostsRepositoryImpl(videoDataSource: LocalVideoDataSource());

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) =>
                DiscoverProvider(videoPostRepository: videoPostRepository)
                  ..loadNextPage())
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme().getTheme(),
          title: 'TokTik',
          home: const DiscoverScreen()),
    );
  }
}


// 95. Provider - Y problemática futura
// https://naranjax.udemy.com/course/flutter-cero-a-experto/learn/lecture/36318056#overview