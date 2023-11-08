import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pocket_news/models/news_channel_headlines_models.dart';

class NewsRepository {
  Future<NewsChannelsHeadlinesModel> fetchNewChannelHeadlinesApi() async {
    String url =
        "https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=bda8f452353a4fd1bace083db3db5eac";

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return NewsChannelsHeadlinesModel.fromJson(body);
    }
    throw Exception('ERROR');
  }
}
