class CompanyInfo {
  String logoUrl;
  String company;
  String titile;
  String location;
  String fullTime;
  List<String> req;
  CompanyInfo(this.logoUrl, this.company, this.titile, this.location,
      this.fullTime, this.req);

  static List<CompanyInfo> generatedComapnyList() {
    return [
      CompanyInfo("images/1.png", "Airbnb inc,", "VP Business Intelegence",
          "50 Herminia Stravenue,\nCanada", "Fulltime", [
        'Creative with an Eye for shape and color\n',
        'Understand Different Material and Production\nMethod',
        'Creative with an Eye for shape and color\n',
        'Understand Different Material and Production\nMethod',
        'Creative with an Eye for shape and color\n',
        'Understand Different Material and Production\nMethod',
      ]),
      CompanyInfo("images/2.png", "Google", "Product Design",
          "417,Marian Plaza, Texas,\nUnited States", "Fulltime", [
        'Creative with an Eye for shape and color\n',
        'Understand Different Material and Production\nMethod',
        'Creative with an Eye for shape and color\n',
        'Understand Different Material and Production\nMethod',
        'Creative with an Eye for shape and color\n',
        'Understand Different Material and Production\nMethod',
      ]),
    ];
  }
}
