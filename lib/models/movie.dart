import '../constants/asset_path.dart';

class Movie {
  String backgroundImg;
  String menuImage;
  String title;

  Movie({
    required this.backgroundImg,
    required this.menuImage,
    required this.title,
  });
}

class Movie1 {
  String popularImage;
  String titleItem;

  Movie1({
    required this.popularImage,
    required this.titleItem,
  });
}

final List<String> genres = [
  'Trông pet',
  'Y tế',
  'Huấn luyện',
  'Cửa hàng',
  'Studio',
  'Làm đẹp'
];

final List<Movie> movies = [
  Movie(
    backgroundImg: AssetPath.BackgroundMain,
    menuImage: AssetPath.menuDichvu1,
    title: 'Trông pet',
  ),
  Movie(
    backgroundImg: AssetPath.BackgroundMain2,
    menuImage: AssetPath.menuDichvu2,
    title: 'Y tế',
  ),
  Movie(
    backgroundImg: AssetPath.BackgroundMain3,
    menuImage: AssetPath.menuDichvu3,
    title: 'Huấn luyện',
  ),
  Movie(
    backgroundImg: AssetPath.BackgroundMain4,
    menuImage: AssetPath.menuDichvu4,
    title: 'Cửa hàng',
  ),
  Movie(
    backgroundImg: AssetPath.BackgroundMain5,
    menuImage: AssetPath.menuDichvu5,
    title: 'Studio',
  ),
  Movie(
    backgroundImg: AssetPath.BackgroundMain6,
    menuImage: AssetPath.menuDichvu6,
    title: 'Làm đẹp',
  ),
];

final List<Movie1> movies1 = [
  Movie1(
    popularImage: AssetPath.popularImage1,
    titleItem: 'Name item',
  ),
  Movie1(
    popularImage: AssetPath.popularImage2,
    titleItem: 'Name item',
  ),
];

    // backgroundImg: AssetPath.menuDichvu2,

    // backgroundImg: AssetPath.menuDichvu3,

    // backgroundImg: AssetPath.menuDichvu4,


    // backgroundImg: AssetPath.menuDichvu5,


    // backgroundImg: AssetPath.menuDichvu6,


