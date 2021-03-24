class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel({this.name, this.real, this.dolar, this.euro, this.bitcoin});

  //cotação do dia 24/03/2021 - 01:38
  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
          name: 'Real', real: 1.0, dolar: 0.18, euro: 0.15, bitcoin: 0.0000033),
      CurrencyModel(
          name: 'Dolar', real: 5.52, dolar: 1.0, euro: 0.84, bitcoin: 0.000018),
      CurrencyModel(
          name: 'Euro', real: 6.54, dolar: 1.18, euro: 1.0, bitcoin: 0.000022),
      CurrencyModel(
          name: 'Bitcoin',
          real: 300484.92,
          dolar: 54419.90,
          euro: 45935.02,
          bitcoin: 1.0),
    ];
  }
}
