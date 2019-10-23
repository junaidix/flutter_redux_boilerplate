import 'package:blank_flutter_app/models/app_state.dart';
import 'package:blank_flutter_app/reducers/counter_reducer.dart';

AppState appReducer(AppState state, action) {
  return new AppState(
    isLoading: false,
    count: counterReducer(state.count, action),
  );
}