import 'package:go_router/go_router.dart';

import '../pages/classification_page.dart';
import '../pages/home.dart';


final GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/classify',
      name: 'classify',
      builder: (context, state) => ClassificationPage(),
    ),
  ],
);
