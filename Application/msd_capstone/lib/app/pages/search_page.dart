import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../services/file.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late Future<List<FileMetadata>> files;

  @override
  void initState() {
    super.initState();
    files = FileService(
      auth: FirebaseAuth.instance,
      client: http.Client(),
    ).fetchFiles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Page'),
      ),
      body: FutureBuilder<List<FileMetadata>>(
        future: files,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // While data is loading
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            // If there's an error
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            // If there's no data
            return const Center(
              child: Text('No files available.'),
            );
          } else {
            // If data is available, display it in a MasonryGridView
            return MasonryGridView.builder(
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
              itemBuilder: (BuildContext context, int index) {
                final file = snapshot.data![index];
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.network(
                    'http://localhost:3000/${file.filePath}',
                  ),
                );
              },
              itemCount: snapshot.data!.length,
            );
          }
        },
      ),
    );
  }
}
