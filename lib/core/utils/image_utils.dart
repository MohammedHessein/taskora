import 'dart:convert';
import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path/path.dart' as path;
import 'package:taskora/core/utils/logger.dart';

class ImageUtils {
  Future<File?> compressImage(File file, {bool convertToWebp = true}) async {
    final filePath = file.absolute.path;
    final dir = file.parent.path;
    final extension = path
        .extension(file.path)
        .toLowerCase()
        .replaceFirst('.', '');
    final baseName = path.basenameWithoutExtension(file.path);

    // Decide format and extension
    final format = convertToWebp
        ? CompressFormat.webp
        : _getCompressFormat(extension);
    final newExtension = convertToWebp ? 'webp' : extension;

    final newFilePath = '$dir/${baseName}_compressed.$newExtension';

    final result = await FlutterImageCompress.compressAndGetFile(
      filePath,
      newFilePath,
      format: format,
      quality: 85,
    );

    return result != null ? File(result.path) : null;
  }

  CompressFormat _getCompressFormat(String extension) {
    switch (extension) {
      case 'jpg':
      case 'jpeg':
        return CompressFormat.jpeg;
      case 'png':
        return CompressFormat.png;
      case 'heic':
        return CompressFormat.heic;
      default:
        return CompressFormat.jpeg; // default fallback
    }
  }

  Future<String> imageToBase64(File imageFile) async {
    try {
      final bytes = await imageFile.readAsBytes();
      return base64Encode(bytes);
    } catch (e) {
      logE("Error converting image to base64: $e");
      return "";
    }
  }
}
