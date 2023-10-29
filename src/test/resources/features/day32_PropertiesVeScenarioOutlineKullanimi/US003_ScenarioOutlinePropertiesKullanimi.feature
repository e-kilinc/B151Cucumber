Feature: US003 Google Sayfasi Testi

  Scenario Outline: Arama kutusunda ford aratsin
    Given kullanici "googleUrl" sayfasina gitti
    And kullanici cerezi kapatir
    Then kullanici google aramaKutusunda properties dosyasindan aldigi "<aranacakArac>" aratti
    But kullanici 2 saniye bekler
    And google sayfasinda basligin "<aranacakArac>" icerdigini test etti
    And sayfayi kapatir
    Examples:
      | aranacakArac |
      | arac1         |
      | arac2        |
      | arac3         |
      | arac4     |

    #Eğer Scenario Outline ile verileri .properties dosyasından almak istersek Examples altındaki verileri
  #.properties dosyasinda oluşturduğumuz key'leri yazariz. Step definitionda oluşturduğuz parametreli method
  #ile de ConfigReader sayesinde bu keylerin değerini kullanmış oluruz