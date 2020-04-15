class Mision {
  final String name;
  final String capital;
  final String region;
  final int population;

  const Mision({
    this.name,
    this.capital,
    this.region,
    this.population
  });
}

final countries = [
  new Mision(name:'Belarus',capital:'Minsk',region:'Europe',population: 9498700),
  new Mision(name:'Bulgaria',capital:'Sofia',region:'Europe',population: 7153784),
  new Mision(name:'Czech Republic',capital:'Prague',region:'Europe',population: 10558524),
  new Mision(name:'Denmark',capital:'Copenhagen',region:'Europe',population: 5717014),
  new Mision(name:'Italy',capital:'Rome',region:'Europe',population: 60665551),
  new Mision(name:'Liechtenstein',capital:'Vaduz',region:'Europe',population: 37623),
  new Mision(name:'Norway',capital:'Oslo',region:'Europe',population: 5223256),
  new Mision(name:'Spain',capital:'Madrid',region:'Europe',population: 46438422),
  new Mision(name:'Sweden',capital:'Stockholm',region:'Europe',population: 9894888),
  new Mision(name:'Ukraine',capital:'Kiev',region:'Europe',population: 42692393),
];