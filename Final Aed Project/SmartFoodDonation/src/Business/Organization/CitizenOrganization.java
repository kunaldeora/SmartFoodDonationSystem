/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business.Organization;

import Business.Roles.CitizenRole;
import Business.Roles.Role;
import java.util.ArrayList;

/**
 *
 * @author kunal
 */
public class CitizenOrganization extends Organization {

    public CitizenOrganization() {
        super(Organization.OrganizationType.CITIZEN.getValue());
        roles.add(new CitizenRole());
    }

    @Override
    public ArrayList<Role> getSupportedRole() {        
        return roles;
    }
    
    
    
}
