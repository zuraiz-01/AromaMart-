import 'package:aroma_mart/app/routes/app_routes.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('route names stay stable for navigation', () {
    expect(Routes.welcome, '/welcome');
    expect(Routes.login, '/login');
    expect(Routes.home, '/home');
  });
}
