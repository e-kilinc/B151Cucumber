@tech
Feature: US003_TechProEducation Sayfasi Testi

  #Feature file icinde Scenariolarda ortak kullanilan steplerde Background: yapisini kullanabiliriz.
  #Her Scenariodan once buradaki stepler calisir sonra scenariodaki stepler calismaya devam eder.
  Background: Kullanici Techpro Sayfasina Gider
    Given kullanici techpro sayfasina gider

  Scenario: TC01 Sayfada Arama Yapar
    Then arama kutusunda qa aratir
    And sayfa basliginin qa icerdigini test eder


    #Feature filede daha once olusturdugumuz bir methodu baska scenariolarda tekrar olusturmadan kullanabiliriz.
  #Yukaridaki ornekte sayfayi kapatir stepp`i icin daha once AmazonStepDefinition classinda olusturdugumuz
  #methodu kullanabiliriz.

  Scenario: TC02 Sayfada Arama Yapar
    Then arama kutusunda java aratir
    And sayfa basliginin java icerdigini test eder



  @techpro
  Scenario: TC03 Sayfada Arama Yapar
    Then arama kutusunda mobile aratir
    When cikan dropdownda mobile developer linkine tiklar
    And sayfa basliginin Mobile icerdigini test eder
    And sayfayi kapatir

    #Scenariolarimizin tek bir browserda calismasini istersek ve tim scenariolardan sonra browseri kapatmak
  #istersek en son Scenarioda close yapabiliriz
