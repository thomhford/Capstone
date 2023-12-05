import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import '../services/get_posts/post_service.dart';

final postService = PostService(
  auth: FirebaseAuth.instance,
  client: http.Client(),
);