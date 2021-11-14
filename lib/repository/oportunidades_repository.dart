import 'package:http/http.dart';
import 'package:tenis_certo/model/oportunidade_model.dart';
import 'package:tenis_certo/model/response_model.dart';

class OportunidadesRepository {
  Client httpClient;

  OportunidadesRepository(this.httpClient);

  Future<List<OportunidadeModel>?> fetch() async {
    var result =  ResponseModel.fromJson({
      "value":[
        {
          "recommendations":[
            {
              "id":22220,
              "symbolID":"WDOZ21",
              "side":50,
              "isDayTrade":true,
              "avaliable":true,
              "goal":10.00,
              "stop":8.00,
              "details":null,
              "market":1,
              "instrument":{
                "description":"MINI DOLAR DEZ/21",
                "quoteFactor":10.0,
                "unitPrice":5450.0,
                "standartLot":1.0,
                "stress":{
                  "value":18.0000,
                  "isPtax":false,
                  "composeNetEquity":false,
                  "dayTradeStrategyValue":0.0500,
                  "dayTradeValue":0.0400
                },
                "logoPath":"https://cdn.toroinvestimentos.com.br/corretora/images/quote/WDO.svg",
                "logoSquaredPath":"https://cdn.toroinvestimentos.com.br/corretora/images/quote-square/WDO.svg",
                "typeMarket":2,
                "active":"WDOZ21",
                "variation":-1.0979,
                "rangeMinimumPriceIncrements":"0.5",
                "brokerageFactor":1.0
              },
              "category":null,
              "duration":"1 hora",
              "createdAt":null,
              "suitability":0,
              "riskModel":0
            },
            {
              "id":22219,
              "symbolID":"WINZ21",
              "side":49,
              "isDayTrade":true,
              "avaliable":true,
              "goal":300.00,
              "stop":260.00,
              "details":null,
              "market":1,
              "instrument":{
                "description":"MINI INDICE DEZ/21",
                "quoteFactor":0.2,
                "unitPrice":108795.0,
                "standartLot":1.0,
                "stress":{
                  "value":18.0000,
                  "isPtax":false,
                  "composeNetEquity":false,
                  "dayTradeStrategyValue":0.0500,
                  "dayTradeValue":0.1100
                },
                "logoPath":"https://cdn.toroinvestimentos.com.br/corretora/images/quote/WIN.svg",
                "logoSquaredPath":"https://cdn.toroinvestimentos.com.br/corretora/images/quote-square/WIN.svg",
                "typeMarket":2,
                "active":"WINZ21",
                "variation":1.734618,
                "rangeMinimumPriceIncrements":"5",
                "brokerageFactor":1.0
              },
              "category":null,
              "duration":"1 hora",
              "createdAt":null,
              "suitability":0,
              "riskModel":0
            },
            {
              "id":22191,
              "symbolID":"WINZ21",
              "side":50,
              "isDayTrade":true,
              "avaliable":true,
              "goal":300.00,
              "stop":260.00,
              "details":null,
              "market":1,
              "instrument":{
                "description":"MINI INDICE DEZ/21",
                "quoteFactor":0.2,
                "unitPrice":108795.0,
                "standartLot":1.0,
                "stress":{
                  "value":18.0000,
                  "isPtax":false,
                  "composeNetEquity":false,
                  "dayTradeStrategyValue":0.0500,
                  "dayTradeValue":0.1100
                },
                "logoPath":"https://cdn.toroinvestimentos.com.br/corretora/images/quote/WIN.svg",
                "logoSquaredPath":"https://cdn.toroinvestimentos.com.br/corretora/images/quote-square/WIN.svg",
                "typeMarket":2,
                "active":"WINZ21",
                "variation":1.734618,
                "rangeMinimumPriceIncrements":"5",
                "brokerageFactor":1.0
              },
              "category":null,
              "duration":"1 hora",
              "createdAt":null,
              "suitability":0,
              "riskModel":0
            },
            {
              "id":22190,
              "symbolID":"WDOZ21",
              "side":49,
              "isDayTrade":true,
              "avaliable":true,
              "goal":10.00,
              "stop":8.00,
              "details":null,
              "market":1,
              "instrument":{
                "description":"MINI DOLAR DEZ/21",
                "quoteFactor":10.0,
                "unitPrice":5450.0,
                "standartLot":1.0,
                "stress":{
                  "value":18.0000,
                  "isPtax":false,
                  "composeNetEquity":false,
                  "dayTradeStrategyValue":0.0500,
                  "dayTradeValue":0.0400
                },
                "logoPath":"https://cdn.toroinvestimentos.com.br/corretora/images/quote/WDO.svg",
                "logoSquaredPath":"https://cdn.toroinvestimentos.com.br/corretora/images/quote-square/WDO.svg",
                "typeMarket":2,
                "active":"WDOZ21",
                "variation":-1.0979,
                "rangeMinimumPriceIncrements":"0.5",
                "brokerageFactor":1.0
              },
              "category":null,
              "duration":"1 hora",
              "createdAt":null,
              "suitability":0,
              "riskModel":0
            }
          ],
          "id":7,
          "name":"Mais Investidos",
          "description":"Estes são os ativos mais negociados pelos clientes da Toro. Os cards estão em ordem de popularidade e não são recomendações dos nossos analistas. ",
          "url":"389837049",
          "order":1
        }
      ],
      "hasValue":true,
      "messages":[

      ],
      "hasWarning":false,
      "hasAlerta":false,
      "hasError":false,
      "hasInfo":false,
      "ok":true
    });

    return result.value;
  }
}