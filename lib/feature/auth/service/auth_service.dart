class AuthService {
  AuthService._();

  static final AuthService instance = AuthService._();
  //
  // Future<UpdateProfileResponse?> login(LoginRequest loginRequest) async {
  //   final response = await NetworkManager.instance.baseRequest(
  //     APIRequestMethod.post,
  //     EndPointEnums.login,
  //     data: {
  //       'email': loginRequest.email,
  //       'password': loginRequest.password,
  //     },
  //   );
  //
  //   return response != null
  //       ? UpdateProfileResponse.fromJson(response)
  //       : null;
  // }
}
