package techproed.stepDefinition;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import io.cucumber.java.en.But;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import techproed.pages.GooglePage;
import techproed.utilities.ConfigReader;
import techproed.utilities.Driver;
import techproed.utilities.ReusableMethods;

public class GoogleStepDefinition {
    GooglePage googlePage= new GooglePage();

    @Given("kullanici {string} sayfasina gitti")
    public void kullaniciSayfasinaGitti(String url) {
        Driver.getDriver().get(ConfigReader.getProperty(url));

    }


    @Then("kullanici google aramaKutusunda {string} aratir")
    public void kullaniciGoogleAramaKutusundaAratir(String arac) {
        googlePage.aramaKutusu.sendKeys(arac);
        googlePage.aramaKutusu.submit();
        
    }

    @And("google sayfasinda basligin {string} icerdigini test eder")
    public void googleSayfasindaBasliginIcerdiginiTestEder(String baslik) {
        Assert.assertTrue(Driver.getDriver().getTitle().contains(baslik));
    }

    @But("kullanici {int} saniye bekler")
    public void kullaniciSaniyeBekler(int sayi) {
        try {
            Thread.sleep(sayi*1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    @And("kullanici cerezi kapatir")
    public void kullaniciCereziKapatir() {
        ReusableMethods.click(googlePage.rejectAll);
    }

    @Then("kullanici google aramaKutusunda properties dosyasindan aldigi {string} aratti")
    public void kullaniciGoogleAramaKutusundaPropertiesDosyasindanAldigiAratti(String araclar) {
        googlePage.aramaKutusu.sendKeys(ConfigReader.getProperty(araclar));
        googlePage.aramaKutusu.submit();
    }

    @And("google sayfasinda basligin {string} icerdigini test etti")
    public void googleSayfasindaBasliginIcerdiginiTestEtti(String str) {
        Assert.assertTrue(Driver.getDriver().getTitle().contains(ConfigReader.getProperty(str)));
    }

    @Then("kullanici data tableda verilen bilgileri aratir")
    public void kullaniciDataTabledaVerilenBilgileriAratir(DataTable data) {
        System.out.println(data.asList());
        ReusableMethods.bekle(2);
        for (int i = 1; i < data.asList().size(); i++) {
            googlePage.aramaKutusu.sendKeys(data.asList().get(i),Keys.ENTER);
            Assert.assertTrue(Driver.getDriver().getTitle().contains(data.asList().get(i)));
            ReusableMethods.bekle(2);
            googlePage.aramaKutusu.clear();

        }

    }
}