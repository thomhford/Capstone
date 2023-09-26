import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

final logger = Logger();

Future<void> uploadFile(File file) async {
  var request = http.MultipartRequest(
    'POST',
    Uri.http('localhost:3000', 'upload'),
  );

  // add file to request
  var fileStream = http.ByteStream(file.openRead());
  var fileLength = await file.length();
  var multipartFile = http.MultipartFile(
    'file',
    fileStream,
    fileLength,
    filename: file.path.split('/').last,
  );
  request.files.add(multipartFile);

  // add other fields to request
  request.fields['title'] = 'My Title';
  request.fields['description'] = 'My Description';

  // send request
  var response = await request.send();

  // handle response
  if (response.statusCode == 200) {
    logger.i('File uploaded successfully');
  } else {
    logger.e('Error uploading file: ${response.reasonPhrase}');
  }
}
