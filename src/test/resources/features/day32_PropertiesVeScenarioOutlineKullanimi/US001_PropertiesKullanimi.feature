Feature: US001 Google Sayfasi Testi
  Background: Google Sayfasina Gidilir
    Given kullanici "googleUrl" sayfasina gitti
    And kullanici cerezi kapatir

    Scenario: Arama kutusunda volvo aratir
      * kullanici google aramaKutusunda "volvo" aratir
      * google sayfasinda basligin "volvo" icerdigini test eder
      * sayfayi kapatir



      # steplerde And, Then, When yerine * kullanilabilir
  
    Scenario: Arama kutusunda ford aratsin
      Then kullanici google aramaKutusunda "ford" aratir
      But kullanici 2 saniye bekler
      And google sayfasinda basligin "ford" icerdigini test eder
      And sayfayi kapatir

      
      
    Scenario: Arama Kutusunda Audi Aratir
      Then kullanici google aramaKutusunda "audi" aratir
      But kullanici 2 saniye bekler
      And google sayfasinda basligin "audi" icerdigini test eder
      And sayfayi kapatir

  #String kullanimda " " cift tirnak ile parametreli method olusturuyoruz
    #Numeric kullanimda yani sayfayi x saniye bekler gibi kullanimlarda da sayi belrttigimiz zaman
  #int olarak parametreli bir method olusturur. Bunu feature file belirleme sebebimiz step definition
  #icinde yaptigimiz beklemeyi stepleri okuyan kisi ya da dev. bunu bilmez ama bilmesi gerekiyorsa
  #feature file da bunu direk gorur ve webelemente ulasilmasi icin bekleme koyuldugunu anlamis olur.