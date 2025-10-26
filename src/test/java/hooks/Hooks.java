
package hooks;

import io.cucumber.java.*;


public class Hooks {

    @Before("@Prod")
    public void prodScenario(){
        System.out.println("Execute this only for the ProdScenario");
    }

    @Before("@UAT")
    public void uatScenario(){
        System.out.println("Execute this only for the UAT Scenario");
    }

    @Before(order = 1)
    public void launchBrowser(Scenario scenario) {
        System.out.println("**** Scenario: **** " + scenario.getName());
        System.out.println("========= Launching Browser =========");
    }

  //@Before(order = 2)
 //public void maximiseBrowser() {
 //System.out.println("========= Maximizing Browser =========");
 // }

    @After(order = 1)
    public void quitBrowser() {
        System.out.println("========= Quitting Browser =========");
    }

 @After(order = 2)
 public void clearBrowserCache() {
      System.out.println("========= Clearing cache =========");
  }

   @BeforeStep()
 public void beforeStep() {
      System.out.println("========= Starting Step =========");
   }

 //  @AfterStep
  // public void afterStep() {
  //   System.out.println("========= Ending Step =========");
 //  }
}
