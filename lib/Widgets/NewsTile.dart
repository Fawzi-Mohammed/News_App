import 'package:flutter/material.dart';
import 'package:news_app/Models/articla_model.dart';
import 'package:news_app/Widgets/web_view_widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewTile extends StatelessWidget {
  const NewTile({super.key, required this.articale});
  final ArticlaModel articale;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return WebViewWidgets(artical: articale);
            },
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articale.image ??
                  'https://cdn.pixabay.com/photo/2024/07/20/17/12/warning-8908707_1280.png',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            articale.title,
            maxLines: 2,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            articale.subtitle ?? '',
            maxLines: 2,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
