import 'dart:convert';
import 'package:myapp/data/models/youtube_response_model.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/environment.dart';

class YoutubeApi {
  Future<YoutubeApiResponse?> getShorts() async {
    var client = http.Client();
    var uri = Uri.parse(
        "${Environments.youtubeAPI}?part=snippet&type=video&videoDuration=short&q=shorts&maxResults=10&key=${Environments.youtubeAPIKey}");
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      return youtubeApiResponseFromJson(
          const Utf8Decoder().convert(response.bodyBytes));
    }
    return null;
  }
}
