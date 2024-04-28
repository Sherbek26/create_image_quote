import 'dart:convert';
import 'dart:typed_data';

import 'package:create_image_quote/image_model.dart';
import 'package:create_image_quote/random_quote.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:lindi_sticker_widget/lindi_controller.dart';
import 'package:lindi_sticker_widget/lindi_sticker_widget.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  late Future<List<dynamic>> futureData;

  LindiController controller = LindiController();

  Future<List<dynamic>> _fetchData() async {
    final quoteUrl = Uri.parse("https://api.quotable.io/random");
    final imageurl = Uri.parse(
        "https://api.unsplash.com/photos/random/?client_id=aG4mdE1ywt8oQvjH7rWC1J8Pezdmvm2sJrdDlr9rBho");

    final quoteResponse = await http.get(quoteUrl);
    final imageResponse = await http.get(imageurl);

    if (quoteResponse.statusCode == 200 && imageResponse.statusCode == 200) {
      final quoteData = QuoteModel.fromJson(jsonDecode(quoteResponse.body));
      final imageData = ImageModel.fromJson(jsonDecode(imageResponse.body));
      return [quoteData, imageData];
    } else {
      throw Exception("Failed to fetch data");
    }
  }

  Future<void> _saveImage(Uint8List image) async {
    try {
      // Get the documents directory using path_provider package
      await ImageGallerySaver.saveImage(image);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Image saved successfully')),
      );
    } catch (e) {
      print('Failed to save image: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to save image')),
      );
    }
  }

  @override
  void initState() {
    futureData = _fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create an image"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.download),
            onPressed: () async {
              Uint8List? image = await controller.saveAsUint8List();
              if (image != null) {
                _saveImage(image);
              }
            },
          )
        ],
      ),
      body: FutureBuilder<List<dynamic>>(
        future: futureData,
        builder: (ctx, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
              ),
            );
          } else if (snapshot.hasData) {
            final quote = snapshot.data![0] as QuoteModel;
            final image = snapshot.data![1] as ImageModel;
            return LindiStickerWidget(
              controller: controller,
              child: Center(
                child: Container(
                  color: Colors.black,
                  width: 400,
                  height: 400,
                  child: Stack(
                    children: [
                      Image.network(
                        image.urls!.regular!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        quote.content,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            futureData = _fetchData();
          });
        },
      ),
    );
  }
}
