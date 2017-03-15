/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.Organization;

import Business.Roles.FoodDistributionSupervisorRole;
import Business.Roles.Role;
import java.util.ArrayList;

/**
 *
 * @author kunal
 */
public class FoodDistributionOrganization extends Organization {

    public FoodDistributionOrganization() {
        super(Organization.OrganizationType.FOODDISTRIBUTION.getValue());
        roles.add(new FoodDistributionSupervisorRole());
    }

    @Override
    public ArrayList<Role> getSupportedRole() {        
        return roles;
    }
    
}
