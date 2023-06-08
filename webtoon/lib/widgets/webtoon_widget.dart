import 'package:flutter/material.dart';
import 'package:webtoon/screens/detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;

  const Webtoon(
      {super.key, required this.title, required this.thumb, required this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              title: title,
              thumb: thumb,
              id: id,
            ),
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          WebtoonCard(
            thumb: thumb,
            id: id,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              )),
        ],
      ),
    );
  }
}

class WebtoonCard extends StatelessWidget {
  const WebtoonCard({
    super.key,
    required this.thumb,
    required this.id,
  });

  final String thumb;
  final String id;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: id,
      child: Container(
        width: 200,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              15), // clipBehavior때문에 미적용 ( 자식의 부모 영역 침범을 제어하는 방법 )
          boxShadow: [
            BoxShadow(
              blurRadius: 15,
              offset: const Offset(10, 10),
              color: Colors.black.withOpacity(0.6),
            ),
          ],
        ),
        child: Image.network(thumb),
      ),
    );
  }
}
