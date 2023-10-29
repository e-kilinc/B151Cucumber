package techproed.runners;

/*
Runner classi testNGdeki xml file kullanimindaki gibi istedigimiz senaryolari
kullanacagimiz tag parametresi sayesinde calistirabiliriz ve plugin parametresi ile
raporlar alabilitizi
 */

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)//Test calistirici notasyon
@CucumberOptions(plugin = {"pretty",
        "html:target/default-cucumber-reports.html",
        "json:target/json-reports/cucumber.json",
        "junit:target/xml-report/cucumber.xml"},
        features = "src/test/resources/features",
        glue = {"techproed/stepDefinition"},
        tags = "@techpro",
        dryRun = false //-->true secersek scenariolari kontrol eder, browseri calistirmaz
        //monochrome = true //-->bu kodu ekledigimizde raporu siyah renkte verir. Yazmazsak renkli verir
        //monochrome=true yaptigimizda dryRun = false sonrasinda virgul koyariz
)


public class Runner {
}

/*
CucumberOptions notasyonuna parametre olarak
    features --> packagein yolunu
    glue -->stepdefinition package
    tag --> calistirmak istedigimiz senaryolari burada belirtiriz

Scenariolarin nerede ve nasil calisacagi, hangi raporu kullanacagi ile alakali secenekleri
bu notasyonda belirtiriz

 */
