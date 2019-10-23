// main.dart
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:blank_flutter_app/models/app_state.dart';
import 'package:blank_flutter_app/pages/home_page.dart';
import 'package:blank_flutter_app/reducers/app_reducer.dart';

void main() => runApp(new MusicParty());

class MusicParty extends StatelessWidget {
  String title = 'Me Suite';                         // new

  final store = new Store<AppState>(                            // new
    appReducer,                                                 // new
    initialState: new AppState(),                               // new
    middleware: [new LoggingMiddleware.printer()],                                             // new
  );

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(                                   // new
      store: store,                                             // new
      child: new MaterialApp(
        title: title,
        home: new HomePage(title),
      ),
    );
  }
}