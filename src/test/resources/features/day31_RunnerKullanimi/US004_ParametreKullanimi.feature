#Scenariolarda birden fazla URL ile gitmek isterdigimizde yada birden fazla urun aratmak isteyince
  #her step icin yeniden metot olusturmak yerine gitmek istedigimiz URL yada aratmak istedigimiz urunu
  #stepleri yazarken " " icine alirsak step definition classinda parametreli bir metot olusturur ve
  #bu methodu diger url ve aratmak istedigimiz urunler icin direk feature file uzerinden degistirip
  #kullanabiliriz. Boylece tekrar tekrar her step icin method olusturmamis oluruz.
  #Asagidaki orneklerde bunu gorebilirsiniz


Feature: US004 TechproEducation Arama Testi
  Scenario: TC01 Sayfada arama yapar
    Given kullanici "https://www.techproeducation.com" sayfasina gider
    Then arama kutusunda "mobile" aratir
    When cikan dropdownda mobile developer linkine tiklar
    And sayfa basliginin Mobile icerdigini test eder
    And sayfayi kapatir

  Scenario: TC02 Sayfada arama yapar
    Given kullanici "https://www.techproeducation.com" sayfasina gider
    Then arama kutusunda "qa" aratir
    And sayfayi kapatir

  Scenario: TC03 Sayfada arama yapar
    Given kullanici "https://www.techproeducation.com" sayfasina gider
    Then arama kutusunda "java" aratir
    And sayfayi kapatir
    
  Scenario: TC04 Sayfada arama yapar
    Given kullanici "https://www.google.com" sayfasina gider
      
  Scenario: TC05 Sayfada arama yapar
    Given kullanici "https://www.youtube.com" sayfasina gider

  Scenario: TC06 Sayfada Arama Yapar
    Given kullanici "https://www.yahoo.com" sayfasina gider