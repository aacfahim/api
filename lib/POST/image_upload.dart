import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_app/utils/const.dart';

class ImageUpload extends StatefulWidget {
  const ImageUpload({super.key});

  @override
  State<ImageUpload> createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  File? image;
  final picker = ImagePicker();
  bool isLoading = false;

  Future getImage(BuildContext context) async {
    final pickedFile =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 80);

    if (pickedFile != null) {
      image = File(pickedFile.path);
      setState(() {});
    } else {
      showSnackBar("Please upload an image", context);
    }
  }

  Future uploadImage() async {
    setState(() {
      isLoading = true;
    });

    var stream = http.ByteStream(image!.openRead());
    stream.cast();

    var length = await image!.length();

    var uri = Uri.parse('https://fakestoreapi.com/products');

    var request = http.MultipartRequest('POST', uri);
    request.fields['title'] = "Static title";

    var multipart = http.MultipartFile('image', stream, length);

    request.files.add(multipart);

    var response = await request.send();

    if (response.statusCode == 200) {
      showSnackBar("File Uploaded", context);
      setState(() {
        isLoading = false;
      });
    } else {
      showSnackBar("Failed to upload", context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Upload Image")),
      body: Column(
        children: [
          isLoading
              ? const Center(child: CircularProgressIndicator())
              : Container(
                  child: image == null
                      ? InkWell(
                          onTap: () => getImage(context),
                          child: Center(child: Text("Pick an Image")))
                      : Container(
                          child: Center(
                            child: Image.file(
                              File(image!.path).absolute,
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                uploadImage();
              },
              child: Text("Upload"))
        ],
      ),
    );
  }
}
