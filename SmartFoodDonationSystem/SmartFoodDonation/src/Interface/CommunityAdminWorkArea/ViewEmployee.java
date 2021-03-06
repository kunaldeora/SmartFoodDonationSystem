/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface.CommunityAdminWorkArea;

import Business.Community.Community;
import Business.Employee.CitizenEmployee;
import Business.Employee.Employee;
import Business.Organization.CitizenOrganization;
import Business.Organization.FoodCollectionOrganization;
import Business.Organization.FoodDistributionOrganization;
import Business.Organization.FoodStandardOrganization;
import Business.Organization.Organization;
import Business.Organization.RestaurantOrganization;
import Business.UserAccount.UserAccount;
import java.awt.CardLayout;
import java.awt.Font;
import javax.swing.JPanel;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author kunal
 */
public class ViewEmployee extends javax.swing.JPanel {

    /**
     * Creates new form ViewEmployee
     */
    private JPanel userProcessContainer;
    //private OrganizationDirectory organizationList;
    private Community community;
    
    public ViewEmployee(JPanel userProcessContainer,UserAccount account) {
        initComponents();
        this.userProcessContainer =userProcessContainer;
        //this.organizationList =  organizationList; 
        this.community = account.getEmployee().getCommunityAssociated();
        populateOrganizationCombobox();
        tblOrganiuzation.getTableHeader().setFont(new Font("Tahoma", Font.PLAIN, 18));
        //populateEmployeeOrganizationCombobox();
        
    }
    
    
    public void populateTable(Organization organization){
        DefaultTableModel model = (DefaultTableModel) tblOrganiuzation.getModel();
        model.setRowCount(0);
        for (UserAccount userAccount : organization.getUserAccountDirectory().getUserAccountList()){
            Object[] row = new Object[3];
            row[0] = userAccount.getEmployee().getId();
            row[1] = userAccount.getEmployee().getName();
            row[2] = userAccount.getRole().toString();
            model.addRow(row);
        }
    }
    
    private void populateOrganizationCombobox(){
        cboOrganization.removeAllItems();
        
         cboOrganization.addItem(community.getCitizenOrg());
         cboOrganization.addItem(community.getFoodCollectionOrg());
         cboOrganization.addItem(community.getFoodDistributionOrg());
         cboOrganization.addItem(community.getFoodStandardOrg());
         cboOrganization.addItem(community.getRestaurantOrg());
        
    }
    
//     private void populateEmployeeOrganizationCombobox(){
//        cboEmployeeOrganization.removeAllItems();
//        
//         cboEmployeeOrganization.addItem(community.getCitizenOrg());
//         cboEmployeeOrganization.addItem(community.getFoodCollectionOrg());
//         cboEmployeeOrganization.addItem(community.getFoodDistributionOrg());
//         cboEmployeeOrganization.addItem(community.getFoodStandardOrg());
//         cboEmployeeOrganization.addItem(community.getRestaurantOrg());
//        
//    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tblOrganiuzation = new javax.swing.JTable();
        cboOrganization = new javax.swing.JComboBox();
        jLabel2 = new javax.swing.JLabel();
        btnBack = new javax.swing.JButton();

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel1.setText("View Employee");

        tblOrganiuzation.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        tblOrganiuzation.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null}
            },
            new String [] {
                "Employee Id", "Employee Name", "Role"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Object.class, java.lang.String.class, java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        tblOrganiuzation.getTableHeader().setReorderingAllowed(false);
        jScrollPane1.setViewportView(tblOrganiuzation);

        cboOrganization.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        cboOrganization.setModel(new javax.swing.DefaultComboBoxModel(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));
        cboOrganization.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cboOrganizationActionPerformed(evt);
            }
        });

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel2.setText("Select Organization");

        btnBack.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btnBack.setText("<< Back");
        btnBack.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBackActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(349, 349, 349)
                        .addComponent(jLabel1))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(106, 106, 106)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel2)
                                .addGap(32, 32, 32)
                                .addComponent(cboOrganization, javax.swing.GroupLayout.PREFERRED_SIZE, 363, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 708, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(btnBack)))
                .addContainerGap(154, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addGap(34, 34, 34)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cboOrganization, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2))
                .addGap(46, 46, 46)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 244, Short.MAX_VALUE)
                .addComponent(btnBack)
                .addContainerGap())
        );
    }// </editor-fold>//GEN-END:initComponents

    private void btnBackActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBackActionPerformed
        // TODO add your handling code here:
         userProcessContainer.remove(this);
        CardLayout layout = (CardLayout) userProcessContainer.getLayout();
        layout.previous(userProcessContainer);
    }//GEN-LAST:event_btnBackActionPerformed

    private void cboOrganizationActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cboOrganizationActionPerformed
        // TODO add your handling code here:
     
        Organization org = (Organization) cboOrganization.getSelectedItem();
        
        if(org == null){
            return;
        }
        
        populateTable(org);
        
    }//GEN-LAST:event_cboOrganizationActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnBack;
    private javax.swing.JComboBox cboOrganization;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable tblOrganiuzation;
    // End of variables declaration//GEN-END:variables
}
