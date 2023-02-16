class Model_class {
  String img;
  String name;
  String date;
  Model_class(this.img, this.name, this.date);
  static List<Model_class> generatedList() {
    return [
      Model_class(
          'images/to-do-list1.1.png', 'Online Class Routine', '10/12/2022'),
      Model_class('images/to-do-list1.2.png', 'Office Work List', '15/12/2022'),
      Model_class('images/to-do-list1.3.png', 'Day Task List', '18/12/2022'),
    ];
  }
}
