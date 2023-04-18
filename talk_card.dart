import 'package:flutter/material.dart';

class TalkCard extends StatefulWidget {
  final String title;
  final String content;
  final List<String> tags;
  final DateTime createdAt;

  TalkCard({
    required this.title,
    required this.content,
    required this.tags,
    required this.createdAt,
  });

  @override
  _TalkCardState createState() => _TalkCardState();
}

class _TalkCardState extends State<TalkCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            renderTitle(),
            Container(height: 8),
            renderContent(),
            Container(height: 8),
            renderTags(),
          ],
        ),
      ),
    );
  }

  renderTags() {
    return Wrap(
      spacing: 8.0,
      children: widget.tags
          .map(
            (e) => Container(
          color: Colors.green,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
            child: Text(
              e,
            ),
          ),
        ),
      )
          .toList(),
    );
  }

  renderContent() {
    return Row(
      children: [
        Flexible(
          child: Text(
            widget.content,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18
            ),
            maxLines: 5,
          ),
        ),
      ],
    );
  }

  renderTitle() {
    final ca = widget.createdAt;

    final dateStr = '${ca.year}-${ca.month}-${ca.day}';

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            color: Colors.orangeAccent,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          dateStr,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}