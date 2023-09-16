import 'package:http/http.dart' as http;

Future<void> registerUser(
    String email, String password, String firstName, String lastName) async {
  final response = await http.post(
    Uri.parse('https://localhost/user/register'),
    body: {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
    },
  );

  if (response.statusCode == 200) {
    // Registration was successful, handle navigation or other logic here
  } else {
    // Handle registration error, display error message to the user
  }
}
