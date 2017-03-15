/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import Business.Community.Community;
import Business.Employee.CitizenEmployee;
import Business.Employee.CommunityAdminEmployee;
import Business.Employee.Employee;
import Business.Employee.FoodCollectionDriverEmployee;
import Business.Employee.FoodCollectionSupervisorEmployee;
import Business.Employee.FoodDistributionSupervisorEmployee;
import Business.Employee.FoodEnterpriseAdminEmployee;
import Business.Employee.FoodStandardSupervisorEmployee;
import Business.Employee.RestaurantEmployee;
import Business.Employee.SysAdminEmployee;
import Business.Enterprise.Enterprise;
import Business.Enterprise.FoodManagementEnterprise;
import Business.Network.Network;
import Business.Roles.CitizenRole;
import Business.Roles.CommunityAdminRole;
import Business.Roles.FoodCollectionDriverRole;
import Business.Roles.FoodCollectionSupervisorRole;
import Business.Roles.FoodDistributionSupervisorRole;
import Business.Roles.FoodEnterpriseAdminRole;
import Business.Roles.FoodStandardSupervisorRole;
import Business.Roles.RestuarantRole;
import Business.Roles.SensorRole;
import Business.Roles.SysAdminRole;
import Business.Sensor.Food;
import Business.Sensor.FridgeSimulation;
import Business.UserAccount.UserAccount;
import java.util.ArrayList;

/**
 *
 * @author kunal
 */
public class ConfigureASystem {
    
    public static EcoSystem configure(){
        
        EcoSystem system = EcoSystem.getInstance();
     
        // Creating the sysadmin for the first time login
        Employee emp = system.getEmployeeDirectory().createEmployee("Kunal Deora",null,new SysAdminEmployee());
        // Creating the user account for the sysadmin
        UserAccount ua = system.getUserAccountDirectory().createUserAccount("sa", "sa", emp, new SysAdminRole());
          
        Network n = new Network();
        n.setName("Boston");
        system.getNetworkList().add(n);
        
        //Create enterprise
        FoodManagementEnterprise fdm = (FoodManagementEnterprise) system.getNetworkList().get(0).getEnterpriseDirectory().createAndAddEnterprise("ABC Food ENterprise", Enterprise.EnterpriseType.FoodManagement);
        Employee e = fdm.getEmployeeDirectory().createEmployee("ABCFoodAdmin 1",null,new FoodEnterpriseAdminEmployee());
        fdm.getUserAccountDirectory().createUserAccount("f1", "f1", e, new FoodEnterpriseAdminRole());
        
        Employee sensor = fdm.getEmployeeDirectory().createEmployee("Sensor",null,new FoodEnterpriseAdminEmployee());
        fdm.getUserAccountDirectory().createUserAccount("ss", "ss", sensor, new SensorRole());
        
  
        //Create Community
        Community fenway = fdm.addCommunity("fenway");
      // Populator populator = new PopulatorBuilder().build();
                       
        Employee few1 = fenway.getCommunityOrganization().getEmployeeDirectory().createEmployee("FEW1",fenway,new CommunityAdminEmployee() );
        Employee fcs = fenway.getFoodCollectionOrg().getEmployeeDirectory().createEmployee("fcs",fenway, new FoodCollectionSupervisorEmployee());
        Employee fcd = fenway.getFoodCollectionOrg().getEmployeeDirectory().createEmployee("fcd",fenway, new FoodCollectionDriverEmployee());
        Employee fds =  fenway.getFoodDistributionOrg().getEmployeeDirectory().createEmployee("fds",fenway, new FoodDistributionSupervisorEmployee());
        Employee fss =  fenway.getFoodStandardOrg().getEmployeeDirectory().createEmployee("fss",fenway, new FoodStandardSupervisorEmployee());
        Employee citizen1 = fenway.getCitizenOrg().getEmployeeDirectory().createEmployee("manasi", fenway, new CitizenEmployee());
        citizen1.setAddress("125 Park Drive, Boston, MA 02115");
        citizen1.setEmailID("manasi.laddha@gmail.com");        
        Employee restaurant1 = fenway.getRestaurantOrg().getEmployeeDirectory().createEmployee("mumbai spice", fenway, new RestaurantEmployee());
        restaurant1.setAddress("251 Massachusetts Ave, Boston, MA 02115");
        restaurant1.setEmailID("kunal.deora@gmail.com");

        // Allocating current address to the driver in the starting.
        ((FoodCollectionDriverEmployee) fcd).setDriverCurrentAddress("44 Germain St, Boston, MA 02115");
        
        //UserAcc        
        fenway.getCommunityOrganization().getUserAccountDirectory().createUserAccount("few1", "few1", few1, new CommunityAdminRole());
        fenway.getFoodCollectionOrg().getUserAccountDirectory().createUserAccount("fcs", "fcs", fcs, new FoodCollectionSupervisorRole());
        fenway.getFoodCollectionOrg().getUserAccountDirectory().createUserAccount("fcd", "fcd", fcd, new FoodCollectionDriverRole());
        fenway.getFoodDistributionOrg().getUserAccountDirectory().createUserAccount("fds", "fds", fds, new FoodDistributionSupervisorRole());
        fenway.getFoodStandardOrg().getUserAccountDirectory().createUserAccount("fss", "fss", fss, new FoodStandardSupervisorRole());
        fenway.getCitizenOrg().getUserAccountDirectory().createUserAccount("manasi", "manasi", citizen1, new CitizenRole());
        fenway.getRestaurantOrg().getUserAccountDirectory().createUserAccount("spice", "spice", restaurant1, new RestuarantRole());
     
        FridgeSimulation simulator = new FridgeSimulation();
        createFoodForEmployee(simulator,5,citizen1);
        createFoodForEmployee(simulator,10, restaurant1);
        
        return system;        
    }
    
    
    private static void createFoodForEmployee( FridgeSimulation simulator,int count, Employee ee){
       
        if(ee instanceof CitizenEmployee){
            CitizenEmployee ce = (CitizenEmployee)ee;
            ArrayList<Food> foodItems =  simulator.generateFoodData(count);
            for(Food item: foodItems){
                ce.getFoodDirectory().addFood(item);
            }
        }
        else if (ee instanceof RestaurantEmployee){
            RestaurantEmployee re = (RestaurantEmployee)ee;
            ArrayList<Food> foodItems =  simulator.generateFoodData(count);
            for(Food item: foodItems){
                re.getFoodDirectory().addFood(item);
            }
            
        }
        
    }
    
    
    

    
    
}
