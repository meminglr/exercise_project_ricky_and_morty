import 'package:flutter/material.dart';

class CharacterCardView extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String origin;
  final String status;
  final String type;

  const CharacterCardView({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.origin,
    required this.status,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Card.filled(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(flex: 4, child: _characterImageWidget(imageUrl)),
              Flexible(
                flex: 6,
                child: _characterInfoWidget(name, origin, status, type),
              ),
            ],
          ),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_add_outlined)),
      ],
    );
  }

  Padding _characterInfoWidget(
    String name,
    String origin,
    String status,
    String type,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("İsim", style: TextStyle(fontWeight: FontWeight.w300)),

          Text(name),
          SizedBox(height: 10),
          Text("Köken", style: TextStyle(fontWeight: FontWeight.w300)),
          Text(origin),
          SizedBox(height: 10),
          Text("Durum", style: TextStyle(fontWeight: FontWeight.w300)),
          Text("$status - $type"),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Padding _characterImageWidget(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),

        child: Image.network(imageUrl),
      ),
    );
  }
}
