import 'dart:convert';
import 'package:http/http.dart';


class Api {
  Map data1 = {};
  Map data2 = {};
  List value = [];
  List name = [];

  Future<void> getapi() async{
    Response responseName = await get('http://forex.cbm.gov.mm/api/currencies');
    Response responseValue = await get('http://forex.cbm.gov.mm/api/latest');
    data1 = jsonDecode(responseName.body);
    data2 = jsonDecode(responseValue.body);
    //addname
    name.add(data1["currencies"]["USD"]);
    name.add(data1["currencies"]["EUR"]);
    name.add(data1["currencies"]["SGD"]);
    name.add(data1["currencies"]["GBP"]);
    name.add(data1["currencies"]["CHF"]);
    name.add(data1["currencies"]["JPY"]);
    name.add(data1["currencies"]["AUD"]);
    name.add(data1["currencies"]["BDT"]);
    name.add(data1["currencies"]["BND"]);
    name.add(data1["currencies"]["KHR"]);
    name.add(data1["currencies"]["CAD"]);
    name.add(data1["currencies"]["CNY"]);
    name.add(data1["currencies"]["HKD"]);
    name.add(data1["currencies"]["INR"]);
    name.add(data1["currencies"]["IDR"]);
    name.add(data1["currencies"]["KRW"]);
    name.add(data1["currencies"]["LAK"]);
    name.add(data1["currencies"]["MYR"]);
    name.add(data1["currencies"]["NZD"]);
    name.add(data1["currencies"]["PKR"]);
    name.add(data1["currencies"]["PHP"]);
    name.add(data1["currencies"]["LKR"]);
    name.add(data1["currencies"]["THB"]);
    name.add(data1["currencies"]["VND"]);
    name.add(data1["currencies"]["BRL"]);
    name.add(data1["currencies"]["CZK"]);
    name.add(data1["currencies"]["DKK"]);
    name.add(data1["currencies"]["EGP"]);
    name.add(data1["currencies"]["ILS"]);
    name.add(data1["currencies"]["KES"]);
    name.add(data1["currencies"]["KWD"]);
    name.add(data1["currencies"]["NPR"]);
    name.add(data1["currencies"]["NOK"]);
    name.add(data1["currencies"]["RUB"]);
    name.add(data1["currencies"]["SAR"]);
    name.add(data1["currencies"]["RSD"]);
    name.add(data1["currencies"]["ZAR"]);
    name.add(data1["currencies"]["SEK"]);
    //addvalue
    value.add(data2["rates"]["USD"]);
    value.add(data2["rates"]["EUR"]);
    value.add(data2["rates"]["SGD"]);
    value.add(data2["rates"]["GBP"]);
    value.add(data2["rates"]["CHF"]);
    value.add(data2["rates"]["JPY"]);
    value.add(data2["rates"]["AUD"]);
    value.add(data2["rates"]["BDT"]);
    value.add(data2["rates"]["BND"]);
    value.add(data2["rates"]["KHR"]);
    value.add(data2["rates"]["CAD"]);
    value.add(data2["rates"]["CNY"]);
    value.add(data2["rates"]["HKD"]);
    value.add(data2["rates"]["INR"]);
    value.add(data2["rates"]["IDR"]);
    value.add(data2["rates"]["KRW"]);
    value.add(data2["rates"]["LAK"]);
    value.add(data2["rates"]["MYR"]);
    value.add(data2["rates"]["NZD"]);
    value.add(data2["rates"]["PKR"]);
    value.add(data2["rates"]["PHP"]);
    value.add(data2["rates"]["LKR"]);
    value.add(data2["rates"]["THB"]);
    value.add(data2["rates"]["VND"]);
    value.add(data2["rates"]["BRL"]);
    value.add(data2["rates"]["CZK"]);
    value.add(data2["rates"]["DKK"]);
    value.add(data2["rates"]["EGP"]);
    value.add(data2["rates"]["ILS"]);
    value.add(data2["rates"]["KES"]);
    value.add(data2["rates"]["KWD"]);
    value.add(data2["rates"]["NPR"]);
    value.add(data2["rates"]["NOK"]);
    value.add(data2["rates"]["RUB"]);
    value.add(data2["rates"]["SAR"]);
    value.add(data2["rates"]["RSD"]);
    value.add(data2["rates"]["ZAR"]);
    value.add(data2["rates"]["SEK"]);
  }

}