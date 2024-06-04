import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//? immutable color list
final colorListProvider = Provider((ref) => colorList);

//? a simple boolean
final isDarkModeProvider = StateProvider<bool>((ref) => false);

//? a simple int
final selectedColorIdxProvider = StateProvider<int>((ref) => 0);

//? AppTheme object (custom)
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  //? STATE = new AppTheme();
  // ThemeNotifier(super.state);
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIdx(int colorIdx) {
    state = state.copyWith(selectedColor: colorIdx);
  }
}
