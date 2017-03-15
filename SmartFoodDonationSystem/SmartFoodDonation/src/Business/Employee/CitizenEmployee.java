/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.Employee;

import Business.Sensor.Food;
import Business.Sensor.FoodDirectory;


/**
 *
 * @author kunal
 */
public class CitizenEmployee extends Employee{
    
    private int currentRewardPoints;
    private FoodDirectory foodDirectory;
    private FoodDirectory foodDonatedHistory;   
 
    
    public CitizenEmployee(){
        foodDirectory = new FoodDirectory();
        foodDonatedHistory = new FoodDirectory();
    }

    public FoodDirectory getFoodDirectory() {
        return foodDirectory;
    }

    public void setFoodDirectory(FoodDirectory foodDirectory) {
        this.foodDirectory = foodDirectory;
    }

    public FoodDirectory getFoodDonatedHistory() {
        return foodDonatedHistory;
    }

    public void setFoodDonatedHistory(FoodDirectory foodDonatedHistory) {
        this.foodDonatedHistory = foodDonatedHistory;
    }
    
    public int calculateTotalRewardPointsForCitizen(){
        
        int rewardPoints = 0;
        
        for(Food food:foodDonatedHistory.getFoodDirectory()){
            try{
               rewardPoints+= Integer.parseInt(food.getRewardPoints().trim());
            }
            catch(Exception e){
                rewardPoints+= 0;
            }
        }
        currentRewardPoints = rewardPoints;
        
        return currentRewardPoints;
    }

    public int getCurrentRewardPoints() {
        return currentRewardPoints;
    }

    public void setCurrentRewardPoints(int currentRewardPoints) {
        this.currentRewardPoints = currentRewardPoints;
    }

}
