import 'package:flutter/material.dart';

class CityList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(height: 3),
        SizedBox(height: 8),
        Text(
          '관광 도시 추천',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          width: double.infinity,
          height: 120,
          child: Row(
            children: [
              cityitem(
                dimension: 80,
                imgUrl:
                    'https://media.istockphoto.com/id/479762938/ko/%EC%82%AC%EC%A7%84/%EA%B0%9C%EA%B8%B0%EC%9D%BC%EC%8B%9D-%EB%A6%AC%EB%B2%84%ED%94%84%EB%9F%B0%ED%8A%B8-%EC%95%BC%EA%B0%84%EC%97%90%EB%A7%8C-%EC%9D%BC%EB%B3%B8%EC%9A%A9.jpg?s=1024x1024&w=is&k=20&c=_riarPL5mgljy16T9Gsgh0KFsD6CqBQhTO_HSaedgcU=',
                cityName: '후쿠오카',
              ),
              Spacer(),
              cityitem(
                dimension: 80,
                imgUrl:
                    'https://media.istockphoto.com/id/1138049211/ko/%EC%82%AC%EC%A7%84/%EC%98%A4%EC%82%AC%EC%B9%B4%EC%9D%98-%EB%8F%84%ED%86%A4%EB%B3%B4%EB%A6%AC-%EC%83%81%EC%A0%90%EA%B0%80-%EC%9D%BC%EB%B3%B8.jpg?s=1024x1024&w=is&k=20&c=ieaklHTKgm1Wl_rvX5doqfmUMrRa8JIdc8j13LHH8_0=',
                cityName: '오사카',
              ),
              Spacer(),
              cityitem(
                dimension: 80,
                imgUrl:
                    'https://media.istockphoto.com/id/963097360/ko/%EC%82%AC%EC%A7%84/%ED%95%98%EB%85%B8%EC%9D%B4%EB%A1%9C-%ED%83%9C%EA%B5%AD%EC%97%90%EC%84%9C-%EB%8C%80%EB%A6%AC%EC%84%9D-%EC%82%AC%EC%9B%90%EC%9E%85%EB%8B%88%EB%8B%A4-%EC%99%80%ED%8A%B8-benchamabophit%EB%A1%9C-%EB%A1%9C%EC%BB%AC%EB%A1%9C-%EC%95%8C%EB%A0%A4%EC%A0%B8-%EC%9E%88%EC%8A%B5%EB%8B%88%EB%8B%A4.jpg?s=1024x1024&w=is&k=20&c=dux-fx_smjQ3iP-6i5h5NMaMnxM6o-3crjHKZfO6kXc=',
                cityName: '방콕',
              ),
              Spacer(),
              cityitem(
                dimension: 80,
                imgUrl:
                    'https://media.istockphoto.com/id/629604122/ko/%EC%82%AC%EC%A7%84/%EB%8F%84%EC%8B%9C-%EA%B2%BD%EA%B4%80-%ED%99%8D%EC%BD%A9-%EA%B3%BC-%EC%A0%95%ED%81%AC-%EB%B3%B4%ED%8A%B8-%EC%95%B3-%ED%8A%B8%EC%99%80%EC%9D%BC%EB%9D%BC%EC%9E%87.jpg?s=1024x1024&w=is&k=20&c=aRExlHyLVySFhwBREdOoQS00i7xwohELAR1EB0AE4io=',
                cityName: '홍콩',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class cityitem extends StatelessWidget {
  const cityitem({
    super.key,
    required this.dimension,
    required this.imgUrl,
    required this.cityName,
  });

  final double dimension;
  final String imgUrl;
  final String cityName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox.square(
          dimension: dimension,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(120),
            child: Image.network(
              imgUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          cityName,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
