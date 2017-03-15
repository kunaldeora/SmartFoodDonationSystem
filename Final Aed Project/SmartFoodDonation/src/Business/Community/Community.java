/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.Community;

import Business.Organization.CitizenOrganization;
import Business.Organization.CommunityAdminOrganization;
//import Business.Organization.FoodAdminOrganization;
import Business.Organization.FoodCollectionOrganization;
import Business.Organization.FoodDistributionOrganization;
import Business.Organization.FoodStandardOrganization;
import Business.Organization.RestaurantOrganization;

/**
 *
 * @author kunal
 */
public class Community {
    
    private String communityName;
    private CitizenOrganization citizenOrg;
    //private FoodAdminOrganization foodAdminOrg;
    private FoodCollectionOrganization foodCollectionOrg;
    private FoodDistributionOrganization foodDistributionOrg;
    private FoodStandardOrganization foodStandardOrg;
    private RestaurantOrganization restaurantOrg;
    private CommunityAdminOrganization communityOrganization;
    
    public Community(String name){
        this.communityName = name;
        citizenOrg = new CitizenOrganization();
        //foodAdminOrg = new FoodAdminOrganization();
        foodCollectionOrg = new FoodCollectionOrganization();
        foodDistributionOrg = new FoodDistributionOrganization();
        communityOrganization = new CommunityAdminOrganization();
        foodStandardOrg = new FoodStandardOrganization();
        restaurantOrg = new RestaurantOrganization();
    }

    public CitizenOrganization getCitizenOrg() {
        return citizenOrg;
    }

    public void setCitizenOrg(CitizenOrganization citizenOrg) {
        this.citizenOrg = citizenOrg;
    }

//    public FoodAdminOrganization getFoodAdminOrg() {
//        return foodAdminOrg;
//    }
//
//    public void setFoodAdminOrg(FoodAdminOrganization foodAdminOrg) {
//        this.foodAdminOrg = foodAdminOrg;
//    }

    public FoodCollectionOrganization getFoodCollectionOrg() {
        return foodCollectionOrg;
    }

    public void setFoodCollectionOrg(FoodCollectionOrganization foodCollectionOrg) {
        this.foodCollectionOrg = foodCollectionOrg;
    }

    public FoodDistributionOrganization getFoodDistributionOrg() {
        return foodDistributionOrg;
    }

    public void setFoodDistributionOrg(FoodDistributionOrganization foodDistributionOrg) {
        this.foodDistributionOrg = foodDistributionOrg;
    }

    public FoodStandardOrganization getFoodStandardOrg() {
        return foodStandardOrg;
    }

    public void setFoodStandardOrg(FoodStandardOrganization foodStandardOrg) {
        this.foodStandardOrg = foodStandardOrg;
    }

    public RestaurantOrganization getRestaurantOrg() {
        return restaurantOrg;
    }

    public void setRestaurantOrg(RestaurantOrganization restaurantOrg) {
        this.restaurantOrg = restaurantOrg;
    }

    public String getCommunityName() {
        return communityName;
    }

    public void setCommunityName(String communityName) {
        this.communityName = communityName;
    }
    
    
       @Override
        public String toString() {
            return communityName;
        }

    public CommunityAdminOrganization getCommunityOrganization() {
        return communityOrganization;
    }

    public void setCommunityOrganization(CommunityAdminOrganization communityOrganization) {
        this.communityOrganization = communityOrganization;
    }
    
}
