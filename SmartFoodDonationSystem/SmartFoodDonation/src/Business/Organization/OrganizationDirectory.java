/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.Organization;

import Business.Organization.Organization.OrganizationType;
import Business.Roles.CitizenRole;
import java.lang.ProcessBuilder.Redirect.Type;
import java.util.ArrayList;

/**
 *
 * @author kunal
 */
public class OrganizationDirectory {
    
    
    private ArrayList<Organization> organizationList;

    public OrganizationDirectory() {
        organizationList = new ArrayList<>();
    }

    public ArrayList<Organization> getOrganizationList() {
        return organizationList;
    }
    
      public Organization createOrganization(Organization.OrganizationType type){
        Organization organization = null;
        if (type.getValue().equals(OrganizationType.CITIZEN.getValue())){
            organization = new CitizenOrganization();   
            //add roles 
            organization.getSupportedRole().add(new CitizenRole());
            organizationList.add(organization);
        }
        else if (type.getValue().equals(OrganizationType.FOODCOLLECTION.getValue())){
            organization = new FoodCollectionOrganization();   
            organizationList.add(organization);
        }
        else if (type.getValue().equals(OrganizationType.FOODDISTRIBUTION.getValue())){
            organization = new FoodDistributionOrganization();   
            organizationList.add(organization);
        }
        else if (type.getValue().equals(OrganizationType.FOODSTANDARD.getValue())){
            organization = new FoodStandardOrganization();   
            organizationList.add(organization);
        }
        
        else if (type.getValue().equals(OrganizationType.RESTAURANT.getValue())){
            organization = new RestaurantOrganization();   
            organizationList.add(organization);
        }
        
    
   
        return organization;
    }
    
    
    
}
