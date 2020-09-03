class APIResponseStat {
  final int updated;
  final int cases;
  final int todayCases;
  final int deaths;
  final int todayDeaths;
  final int recovered;
  final int todayRecovered;
  final int active;
  final int critical;
  final int casesPerOneMillion;
  final double deathsPerOneMillion;
  final int tests;
  final double testsPerOneMillion;
  final int population;
  final int oneCasePerPeople;
  final int oneDeathPerPeople;
  final int oneTestPerPeople;
  final double activePerOneMillion;
  final double recoveredPerOneMillion;
  final double criticalPerOneMillion;
  final int affectedCountries;

  APIResponseStat(
      {this.updated,
      this.cases,
      this.todayCases,
      this.deaths,
      this.todayDeaths,
      this.recovered,
      this.todayRecovered,
      this.active,
      this.critical,
      this.casesPerOneMillion,
      this.deathsPerOneMillion,
      this.tests,
      this.testsPerOneMillion,
      this.population,
      this.oneCasePerPeople,
      this.oneDeathPerPeople,
      this.oneTestPerPeople,
      this.activePerOneMillion,
      this.recoveredPerOneMillion,
      this.criticalPerOneMillion,
      this.affectedCountries});

  factory APIResponseStat.fromJson(Map<String, dynamic> json) {
    return APIResponseStat(
    updated : json['updated'],
    cases : json['cases'],
    todayCases : json['todayCases'],
    deaths : json['deaths'],
    todayDeaths : json['todayDeaths'],
    recovered : json['recovered'],
    todayRecovered: json['todayRecovered'],
    active : json['active'],
    critical : json['critical'],
    casesPerOneMillion : json['casesPerOneMillion'],
    deathsPerOneMillion : json['deathsPerOneMillion'],
    tests : json['tests'],
    testsPerOneMillion : json['testsPerOneMillion'],
    population : json['population'],
    oneCasePerPeople : json['oneCasePerPeople'],
    oneDeathPerPeople : json['oneDeathPerPeople'],
    oneTestPerPeople : json['oneTestPerPeople'],
    activePerOneMillion : json['activePerOneMillion'],
    recoveredPerOneMillion : json['recoveredPerOneMillion'],
    criticalPerOneMillion : json['criticalPerOneMillion'],
    affectedCountries : json['affectedCountries']);
  }
}
