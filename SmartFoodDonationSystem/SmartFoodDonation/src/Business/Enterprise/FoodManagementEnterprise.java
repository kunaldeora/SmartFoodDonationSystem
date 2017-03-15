/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.Enterprise;

import Business.Community.Community;
import Business.Roles.Role;
import java.util.ArrayList;


/**
 *
 * @author kunal
 */
public class FoodManagementEnterprise extends Enterprise {
    
    private ArrayList<Community> communityList;
    
    
    public FoodManagementEnterprise(String name){
        super(name,EnterpriseType.FoodManagement);
        communityList = new ArrayList<Community>();
        
    }
    
    public Community addCommunity(String name){
        Community c = new Community(name);
        communityList.add(c);
        return c;
        
    }

    @Override
    public ArrayList<Role> getSupportedRole() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public ArrayList<Community> getCommunityList() {
        return communityList;
    }

    public void setCommunityList(ArrayList<Community> communityList) {
        this.communityList = communityList;
    }
    
    
    
    
    
    
    
}
