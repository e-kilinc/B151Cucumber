@all
Feature: US001_TechProEducation Sayfasi Testi
  Scenario: TC01 Sayfada Arama Yapar
    Given kullanici techpro sayfasina gider
    Then arama kutusunda qa aratir
    And sayfa basliginin qa icerdigini test eder
    And sayfayi kapatir

    #Feature filede daha once olusturdugumuz bir methodu baska scenariolarda tekrar olusturmadan kullanabiliriz.
  #Yukaridaki ornekte sayfayi kapatir stepp`i icin daha once AmazonStepDefinition classinda olusturdugumuz
  #methodu kullanabiliriz.

  Scenario: TC02 Sayfada Arama Yapar
    Given kullanici techpro sayfasina gider
    Then arama kutusunda java aratir
    And sayfa basliginin java icerdigini test eder
    And sayfayi kapatir


  @techpro
    Scenario: TC03 Sayfada Arama Yapar
      Given kullanici techpro sayfasina gider
      Then arama kutusunda mobile aratir
      When cikan dropdownda mobile developer linkine tiklar
      And sayfa basliginin Mobile icerdigini test eder
      And sayfayi kapatir