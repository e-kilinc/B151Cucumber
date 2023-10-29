package techproed.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import techproed.utilities.Driver;

public class GooglePage {
    public GooglePage() {
        PageFactory.initElements(Driver.getDriver(),this);
    }

    @FindBy(xpath = "//*[@class='gLFyf']")
    public WebElement aramaKutusu;

    @FindBy(xpath = "(//*[@class='QS5gu sy4vM'])[1]")
    public WebElement rejectAll;

}
