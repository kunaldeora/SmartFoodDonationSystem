/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.Roles;

import Business.EcoSystem;
import Business.Enterprise.Enterprise;
import Business.Organization.Organization;
import Business.UserAccount.UserAccount;
import Interface.FoodDistributionWorkArea.FoodDistributionWorkArea;
import javax.swing.JPanel;

/**
 *
 * @author kunal
 */
public class FoodDistributionSupervisorRole extends Role {

    @Override
    public JPanel createWorkArea(JPanel userProcessContainer, UserAccount account, Organization organization, Enterprise enterprise, EcoSystem business) {
        return new FoodDistributionWorkArea(userProcessContainer, account);
    }
    
    @Override
    public String toString(){
        return Role.RoleType.Supervisor.getValue();
        
    }
    
}
