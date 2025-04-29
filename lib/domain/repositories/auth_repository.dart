import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/data/models/request/login_request.dart';
import 'package:strategi_hub_app/data/models/response/user_response.dart';
import 'package:strategi_hub_app/data/remote/auth_remote_source.dart';
import 'package:strategi_hub_app/data/local/local_storage_service.dart';
import 'package:strategi_hub_app/domain/entities/user.dart';
import 'package:strategi_hub_app/domain/mappers/user.dart';

class AuthRepository {
  final AuthRemoteSource _authRemoteSource;
  final LocalStorageService _storageService;

  AuthRepository(this._authRemoteSource, this._storageService);

  Future<User> getProfile() async {
    final key = LocalStorageKeys.user;
    try {
      final result = await _authRemoteSource.getProfile();

      await _storageService.setListDefault(
          LocalStorageKeys.access, result.access ?? []);

      final user = UserMapper().convert<UserResponse, User>(result);
      await _storageService.setObject<User>(key, user.toJson());
      return user;
    } catch (e) {
      final user = _storageService.getObject<User>(key, User.fromJson);
      if (user != null) {
        return user;
      }
      throw Exception('Get User failed: ${e.toString()}');
    }
  }

  Future<User> login(String username, String password) async {
    final key = LocalStorageKeys.user;
    try {
      final request = LoginRequest(username: username, password: password);
      final response = await _authRemoteSource.login(request);

      // Store tokens
      await _storageService.setString(
          LocalStorageKeys.accessToken, response.accessToken ?? '');
      await _storageService.setString(
          LocalStorageKeys.refreshToken, response.refreshToken ?? '');
      final expiredIn =
          DateTime.now().add(Duration(seconds: response.expiresIn ?? 0));
      await _storageService.setDateTime(
          LocalStorageKeys.tokenExpiredIn, expiredIn);
      final result = await _authRemoteSource.getProfile();

      await _storageService.setListDefault(
          LocalStorageKeys.access, result.access ?? []);

      final user = UserMapper().convert<UserResponse, User>(result);
      await _storageService.setObject<User>(key, user.toJson());

      return user;
    } catch (e) {
      throw Exception('Login failed: ${e.toString()}');
    }
  }

  Future<User> loginSSO(String ssoAccessToken) async {
    final key = LocalStorageKeys.user;
    try {
      final response = await _authRemoteSource.tokenExchange(ssoAccessToken);

      // Store tokens
      await _storageService.setString(
          LocalStorageKeys.accessToken, response.accessToken ?? '');
      await _storageService.setString(
          LocalStorageKeys.refreshToken, response.refreshToken ?? '');
      final expiredIn =
          DateTime.now().add(Duration(seconds: response.expiresIn ?? 0));
      await _storageService.setDateTime(
          LocalStorageKeys.tokenExpiredIn, expiredIn);
      final result = await _authRemoteSource.getProfile();

      await _storageService.setListDefault(
          LocalStorageKeys.access, result.access ?? []);

      final user = UserMapper().convert<UserResponse, User>(result);
      await _storageService.setObject<User>(key, user.toJson());

      return user;
    } catch (e) {
      throw Exception('Login failed: ${e.toString()}');
    }
  }

  Future<bool> logout() async {
    try {
      // Remove tokens
      await _storageService.clearAll();

      return true;
    } catch (e) {
      throw Exception('Logout failed: ${e.toString()}');
    }
  }
}
