import 'package:climate_change/pages/classification_page.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../pages/home.dart';
import '../widgets/side_menu.dart';



final GoRouter appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          body: Row(
            children: [
              Sidebar(),
              Expanded(child: child),
            ],
          ),
        );
      },
      routes: [
        GoRoute(path: '/home', builder: (_, __) => HomePage()),
        GoRoute(path: '/analytics', builder: (_, __) => ClassificationPage()),
      ],
    ),
  ],
);