enum ExersiseType {
  pushups(
      id: 0,
      name: 'Отжимания',
      picture: 'assets/images/ui/pushups.png',
      hit: 20),
  squats(
      id: 1,
      name: 'Приседания',
      picture: 'assets/images/ui/squats.jpg',
      hit: 20),
  abdomialcrunch(
      id: 1,
      name: 'Пресс',
      picture: 'assets/images/ui/abdominalcrunch.png',
      hit: 20),
  slopes(
      id: 1, name: 'Наклоны', picture: 'assets/images/ui/slopes.png', hit: 20);

  const ExersiseType(
      {required this.id,
      required this.name,
      required this.picture,
      required this.hit});
  final int id;
  final String name;
  final String picture;
  final int hit;
}
