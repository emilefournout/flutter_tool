cp -r /Users/emilefournout/Tool/flutter_base_app/lib/. lib/.
mkdir assets
cp -r /Users/emilefournout/Tool/flutter_base_app/assets/. assets/.

sleep 1

flutter pub add dio
flutter pub add hooks_riverpod
flutter pub add flutter_hooks
flutter pub add equatable
flutter pub add flutter_svg
flutter pub add google_fonts
flutter pub add firebase_core
flutter pub add firebase_auth
flutter pub add firebase_storage
flutter pub add cloud_functions
flutter pub add firebase_ui_auth
flutter pub add firebase_ui_firestore
flutter pub add cloud_firestore
flutter pub add device_preview
flutter pub add pixel_perfect
flutter pub add device_preview
flutter pub add build_runner
flutter pub add flutter_gen

sleep 1

sed -i '' -e '59i\
' pubspec.yaml
sed -i '' -e '60i\
flutter_gen:' pubspec.yaml
sed -i '' -e '61i\
  output: lib/core/gen/' pubspec.yaml

sed -i '' -e '62i\
' pubspec.yaml
sed -i '' -e '63i\
  integrations:' pubspec.yaml
sed -i '' -e '64i\
    flutter_svg: true' pubspec.yaml
sed -i '' -e '65i\
' pubspec.yaml

sed -i '' -e '85c\
  assets:' pubspec.yaml
sed -i '' -e '86c\
    - assets/icons/' pubspec.yaml
sed -i '' -e '87c\
    - assets/images/' pubspec.yaml

sed -i '' -e '85i\
' pubspec.yaml

flutter clean
flutter pub get
flutter packages pub run build_runner build
fluttergen -h
fluttergen -c pubspec.yaml
