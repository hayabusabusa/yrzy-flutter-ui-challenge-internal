import 'package:flutter/material.dart';

class InternalRecipesCell extends StatelessWidget {
  final String title;
  final String imageURL;

  const InternalRecipesCell({
    Key? key,
    required this.title,
    required this.imageURL,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      imageURL,
                    ),
                  )
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                // NOTE: リップルエフェクトが画像の後ろに回るのに違和感を感じたので `GestureDetector` で使う.
                child: GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.white,
                    ),
                  ),
                )
              ),
            ],
          ),
        ),
        const SizedBox(height: 8,),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}