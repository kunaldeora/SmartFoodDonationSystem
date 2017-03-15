/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.Employee;

/**
 *
 * @author kunal
 */
public class FoodCollectionDriverEmployee extends Employee{

    private String driverCurrentAddress;
    private String ddriverName;
    private String citizenEmail;
    private int frequency;
    private boolean isBusy;

    public FoodCollectionDriverEmployee() {
      super();
      frequency = 0;
    }
    
    

    public String getDriverCurrentAddress() {
        return driverCurrentAddress;
    }

    public void setDriverCurrentAddress(String driverCurrentAddress) {
        this.driverCurrentAddress = driverCurrentAddress;
    }

    public String getDdriverName() {
        return ddriverName;
    }

    public void setDdriverName(String ddriverName) {
        this.ddriverName = ddriverName;
    }

    public int getFrequency() {
        return frequency;
    }

    public void setFrequency(int frequency) {
        this.frequency = frequency;
    }

    public boolean isIsBusy() {
        return isBusy;
    }

    public void setIsBusy(boolean isBusy) {
        this.isBusy = isBusy;
    }

    public String getCitizenEmail() {
        return citizenEmail;
    }

    public void setCitizenEmail(String citizenEmail) {
        this.citizenEmail = citizenEmail;
    }


    
    
}
