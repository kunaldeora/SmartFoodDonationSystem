/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.WorkQueue;

import Business.Employee.CitizenEmployee;
import static Business.Roles.Role.RoleType.Citizen;
import Business.Sensor.Food;

/**
 *
 * @author kunal
 */
public class FoodStandardWorkRequest extends WorkRequest {
 
     private Food food;
     private String sentTo;
     private CitizenEmployee citizen;
    
     @Override
    public String toString(){
        return food.getFoodName();
        
    }

    public Food getFood() {
        return food;
    }

    public void setFood(Food food) {
        this.food = food;
    }

    public String getSentTo() {
        return sentTo;
    }

    public void setSentTo(String sentTo) {
        this.sentTo = sentTo;
    }

    public CitizenEmployee getCitizen() {
        return citizen;
    }

    public void setCitizen(CitizenEmployee citizen) {
        this.citizen = citizen;
    }
}
