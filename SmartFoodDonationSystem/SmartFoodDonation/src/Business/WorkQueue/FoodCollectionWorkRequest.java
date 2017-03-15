/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.WorkQueue;

import Business.Employee.CitizenEmployee;
import Business.Employee.RestaurantEmployee;
import Business.Sensor.Food;

/**
 *
 * @author kunal
 */
public class FoodCollectionWorkRequest extends WorkRequest {
    
    private Food food;
    private CitizenEmployee citizen;
    private RestaurantEmployee restaurantEmp;
    private String  driverName;
    
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

    public String getDriverName() {
        return driverName;
    }

    public void setDriverName(String driverName) {
        this.driverName = driverName;
    }
    
    @Override
    public String toString(){
        return food.getFoodName();
        
    }

    public RestaurantEmployee getRestaurantEmp() {
        return restaurantEmp;
    }

    public void setRestaurantEmp(RestaurantEmployee restaurantEmp) {
        this.restaurantEmp = restaurantEmp;
    }

  
    
    
    
}
