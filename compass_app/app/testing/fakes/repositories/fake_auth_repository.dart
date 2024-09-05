import 'package:compass_app/data/repositories/auth/auth_repository.dart';
import 'package:compass_app/utils/result.dart';

class FakeAuthRepository extends AuthRepository {
  String? token;

  @override
  Future<bool> get isAuthenticated async => token != null;

  @override
  Future<Result<void>> login({
    required String email,
    required String password,
  }) async {
    token = 'TOKEN';
    notifyListeners();
    return Result.ok(null);
  }

  @override
  Future<Result<void>> logout() async {
    token = null;
    notifyListeners();
    return Result.ok(null);
  }
}