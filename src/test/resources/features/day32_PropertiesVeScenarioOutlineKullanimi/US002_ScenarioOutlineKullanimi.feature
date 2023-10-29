Feature: US002 Google Sayfasi Testi

  Scenario Outline: Arama kutusunda ford aratsin
    Given kullanici "googleUrl" sayfasina gitti
    And kullanici cerezi kapatir
    Then kullanici google aramaKutusunda "<aranacakArac>" aratir
    But kullanici 2 saniye bekler
    And google sayfasinda basligin "<aranacakArac>" icerdigini test eder
    And sayfayi kapatir

    Examples:
      | aranacakArac |
      | ford         |
      | volvo        |
      | audi         |
      | mercedes     |

    #Scenario Outline kullanimi testNG deki data provider mantiği ile ayni çalışır.
#Scenario Outline yapısını kullandıktan sonra birden fazla veri ile arama işlemi yapmak yada login işlemi yapmak
#istiyorsak aratmak istediğimiz kelimeyi "< >" içine belirtiriz. Daha önce parametreli method oluşturduğumuz için
#tekrar parametreli method oluşturmaya gerek kalmadan Scenari Outline yapısına tıklayarak alt kısımda çıkan
#Examples bolümünde yukarıdaki örnekteki gibi belirttiğimiz başlık altına istediğimiz verileri girerek sırasiyla
#arama işlemlerini gerçekleştirmiş oluruz
