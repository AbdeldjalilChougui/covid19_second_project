class Album2 {
  final int id;
  final int cases;
  final int todayCases;
  final int deaths;
  final int todayDeaths;
  final int recovered;
  final int todayRecovered;
  final int active;
  final int population;
  final String country;
  final String flag;

  Album2(
      {this.id,
        this.cases,
        this.todayCases,
        this.deaths,
        this.todayDeaths,
        this.recovered,
        this.todayRecovered,
        this.active,
        this.population,
        this.country,
        this.flag});

  factory Album2.fromJson(Map<String, dynamic> json) {
    return Album2(
      id: json['id'],
      cases: json['cases'],
      todayCases: json['todayCases'],
      deaths: json['deaths'],
      todayDeaths: json['todayDeaths'],
      recovered: json['recovered'],
      todayRecovered: json['todayRecovered'],
      active: json['active'],
      population: json['population'],
      country: json['country'],
      flag: json['countryInfo']['flag'],
    );
  }
}