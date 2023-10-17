import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;

/// Thrown when a new user server request fails.
class RegisterUserFailure implements Exception {
  const RegisterUserFailure([this.message = 'An unknown exception occurred']);

  /// Creates a [RegisterUserFailure] when a specific status code is returned.
  factory RegisterUserFailure.fromCode(int code) {
    switch (code) {
      case 400:
        return const RegisterUserFailure('Invalid request body');
      case 401:
        return const RegisterUserFailure('Invalid idToken');
      case 403:
        return const RegisterUserFailure('User already exists');
      case 500:
        return const RegisterUserFailure('Server error');
      default:
        return const RegisterUserFailure();
    }
  }

  /// Creates a [RegisterUserFailure] when a specific exception is thrown.
  factory RegisterUserFailure.fromException(Exception exception) {
    switch (exception.runtimeType) {
      case SocketException:
        return const RegisterUserFailure('Failed to connect to the server');
      case http.ClientException:
        return const RegisterUserFailure('Failed to connect to the server');
      case TimeoutException:
        return const RegisterUserFailure('Connection to the server timed out');
      case FormatException:
        return const RegisterUserFailure('Invalid response from the server');
      default:
        return const RegisterUserFailure();
    }
  }

  /// The associated error message.
  final String message;
}

/// Repository which handles all server requests
class ServerRepository {
  /// Sends newly created user to the server to be stored in the database
  /// Requires the user's idToken to be passed in the header
  Future<void> registerUser({
    required String? idToken,
  }) async {
    http.Response response;
    try {
      response = await http.post(
        Uri.http('localhost:3000', '/user/register'),
        headers: {
          'Authorization': 'Bearer $idToken',
          'Content-Type': 'application/json',
        },
      );
    } on Exception catch (e) {
      throw RegisterUserFailure.fromException(e);
    }
    if (response.statusCode == 200) {
      return;
    } else {
      throw RegisterUserFailure.fromCode(response.statusCode);
    }
  }
}
