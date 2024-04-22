import 'package:dio/dio.dart';
import 'package:klaes_app/config/constants/enviroment.dart';
import 'package:klaes_app/src/auth/domain/domain.dart';
import 'package:klaes_app/src/auth/infraestructure/infraestructure.dart';

class AuthDatasourceInfraestructure extends AuthDatasource {
  final dio = Dio(BaseOptions(baseUrl: Enviroment.apiUrlAuth));

  @override
  Future<User> checkAuthStatus(String token) async {
    try {
      final response = await dio.get('/auth/check-status',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      final user = UserMapper.userJsonToEntity(response.data);
      return user;
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw CustomError('Token incorrecto');
      }
      throw Exception();
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<User> login(String email, String password) async {
    try {
      final response = await dio
          .post('/auth/login', data: {'email': email, 'password': password});
      final user = UserMapper.userJsonToEntity(response.data);

      // final User newUser = User(
      //     id: "12345",
      //     email: "harry@google.com",
      //     fullName: "Harry",
      //     roles: ["admin"],
      //     token:
      //         "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjJlZDVhN2QxLWI5YzAtNGI5MC05ODQ5LWQ5MmE5YzE1ZjYyNiIsImlhdCI6MTcxMzgwNjkzNSwiZXhwIjoxNzEzODE0MTM1fQ.OuJvJ2kabcdpY7y_2jFbIpyuto45fy5dr-Elm_qlbU8");

      // return newUser;
      return user;

    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        throw CustomError(
            e.response?.data['message'] ?? 'Credenciales incorrectas');
      }
      if (e.type == DioExceptionType.connectionTimeout) {
        throw CustomError('Revisar conexion a internet');
      }
      throw Exception();
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<User> register(String email, String password, String fullName) async {
    try {
      final response = await dio.post('/auth/register',
          data: {'email': email, 'password': password, 'fullName': fullName});
      final user = UserMapper.userJsonToEntity(response.data);
      return user;
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        throw CustomError(e.response?.data['message'] ?? 'Datos no validos');
      }
      if (e.type == DioExceptionType.connectionTimeout) {
        throw CustomError('Revisar conexion a internet');
      }
      throw Exception();
    } catch (e) {
      throw Exception();
    }
  }
}
