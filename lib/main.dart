// Copyright 2024 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,777777777777777777777ه ررررررررررررررررررررررررررررز
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'landing_page.dart';

/// The API key to use when accessing the Gemini API.
///
/// To learn how to generate and specify this key,
/// check out the README file of this sample.
// const String _apiKey = String.fromEnvironment('APIKEY');

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COM-AI by starCode for Development',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          // brightness: Brightness.dark,
          seedColor: Colors.amber,
        ),
        useMaterial3: true,
      ),
      home: LandingPage(),
      // home: ChatScreen(title: 'COM-AI'),
    );
  }
}