abstract class AuthRepo {
  Future<void> login(String password, String email);
}
