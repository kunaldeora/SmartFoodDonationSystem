/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.Organization;

//import Business.DonorHistory;
import Business.Employee.Employee;
import Business.Roles.FoodCollectionDriverRole;
import Business.Roles.FoodCollectionSupervisorRole;
import Business.Roles.Role;
import java.util.ArrayList;

/**
 *
 * @author kunal
 */
public class FoodCollectionOrganization extends Organization{
 
    
    public FoodCollectionOrganization() {
        super(Organization.OrganizationType.FOODCOLLECTION.getValue());
        //foodCollectionDonations = new ArrayList<>();
        roles.add(new FoodCollectionDriverRole());
        roles.add(new FoodCollectionSupervisorRole());
    }

    @Override
    public ArrayList<Role> getSupportedRole() {        
        return roles;
    }
    
//    public DonorHistory createDonationRequest(Employee ee){
//        for(DonorHistory dh: foodCollectionDonations){
//            if(dh.getDonor().getName().equals(ee.getName())){
//                
//            }            
//        }
//        
//    }
//    
    
}
