/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.WorkQueue;

import Business.Employee.CitizenEmployee;
import Business.Sensor.Food;

/**
 *
 * @author kunal
 */
public class FoodDistributionWorkRequest extends WorkRequest {
     
    private Food food;
    private CitizenEmployee citizen;

    public Food getFood() {
        return food;
    }

    public void setFood(Food food) {
        this.food = food;
    }

   

    public CitizenEmployee getCitizen() {
        return citizen;
    }

    public void setCitizen(CitizenEmployee citizen) {
        this.citizen = citizen;
    }
    
    @Override
    public String toString(){
        return food.getFoodName();
    }
    
    
    

    
    
}
