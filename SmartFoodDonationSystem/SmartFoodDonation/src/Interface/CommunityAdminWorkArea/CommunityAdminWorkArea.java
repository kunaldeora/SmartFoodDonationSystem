/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface.CommunityAdminWorkArea;

import Business.Community.Community;
import Business.Enterprise.Enterprise;
import Business.Enterprise.FoodManagementEnterprise;
import Business.UserAccount.UserAccount;
import java.awt.CardLayout;
import javax.swing.JPanel;

/**
 *
 * @author kunal
 */
public class CommunityAdminWorkArea extends javax.swing.JPanel {

    /**
     * Creates new form CommunityAdminWorkArea
     */
    private JPanel userProcessContainer;
    private FoodManagementEnterprise enterprise;
    private UserAccount account;
    private Community community;
    
    
    public CommunityAdminWorkArea(JPanel userProcessContainer,Enterprise enterprise, UserAccount account) {
        
        initComponents();
        this.userProcessContainer =userProcessContainer;
        this.enterprise = (FoodManagementEnterprise) enterprise;
        this.account = account;
        community = account.getEmployee().getCommunityAssociated();
        lblCommunityName.setText(account.getEmployee().getCommunityAssociated().getCommunityName());
        
        
    }
    
        
    
    

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        lblCommunityName = new javax.swing.JLabel();
        btnViewEmployee = new javax.swing.JButton();
        btnManageUserAccount = new javax.swing.JButton();
        btnBestCitizen = new javax.swing.JButton();
        btnBestRestaurant = new javax.swing.JButton();

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel1.setText("Community Admin Work Area");

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 20)); // NOI18N
        jLabel2.setText("Community Name :");

        lblCommunityName.setFont(new java.awt.Font("Tahoma", 0, 20)); // NOI18N
        lblCommunityName.setText("jLabel3");

        btnViewEmployee.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btnViewEmployee.setText("View Employee >>");
        btnViewEmployee.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnViewEmployeeActionPerformed(evt);
            }
        });

        btnManageUserAccount.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btnManageUserAccount.setText("Manage User Account >>");
        btnManageUserAccount.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnManageUserAccountActionPerformed(evt);
            }
        });

        btnBestCitizen.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btnBestCitizen.setText("Know your best Citizen >>");
        btnBestCitizen.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBestCitizenActionPerformed(evt);
            }
        });

        btnBestRestaurant.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btnBestRestaurant.setText("Know your best Restaurant >>");
        btnBestRestaurant.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnBestRestaurantActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel2)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(28, 28, 28)
                        .addComponent(lblCommunityName))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(125, 125, 125)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(btnManageUserAccount, javax.swing.GroupLayout.PREFERRED_SIZE, 398, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel1)
                            .addComponent(btnViewEmployee, javax.swing.GroupLayout.PREFERRED_SIZE, 398, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnBestCitizen, javax.swing.GroupLayout.PREFERRED_SIZE, 398, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnBestRestaurant, javax.swing.GroupLayout.PREFERRED_SIZE, 398, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(449, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(24, 24, 24)
                .addComponent(jLabel1)
                .addGap(34, 34, 34)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(lblCommunityName))
                .addGap(31, 31, 31)
                .addComponent(btnManageUserAccount, javax.swing.GroupLayout.PREFERRED_SIZE, 58, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(41, 41, 41)
                .addComponent(btnViewEmployee, javax.swing.GroupLayout.PREFERRED_SIZE, 54, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(48, 48, 48)
                .addComponent(btnBestCitizen, javax.swing.GroupLayout.PREFERRED_SIZE, 66, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(42, 42, 42)
                .addComponent(btnBestRestaurant, javax.swing.GroupLayout.PREFERRED_SIZE, 67, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(347, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents

    private void btnViewEmployeeActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnViewEmployeeActionPerformed
        // TODO add your handling code here:
        ViewEmployee manageNetworkJPanel = new ViewEmployee(userProcessContainer, account);
        userProcessContainer.add("manageNetworkJPanel", manageNetworkJPanel);
        CardLayout layout = (CardLayout) userProcessContainer.getLayout();
        layout.next(userProcessContainer);

    }//GEN-LAST:event_btnViewEmployeeActionPerformed

    private void btnManageUserAccountActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnManageUserAccountActionPerformed
        // TODO add your handling code here:
         ManageUserAccount manageNetworkJPanel = new ManageUserAccount(userProcessContainer, enterprise,community);
        userProcessContainer.add("manageNetworkJPanel", manageNetworkJPanel);
        CardLayout layout = (CardLayout) userProcessContainer.getLayout();
        layout.next(userProcessContainer);
    }//GEN-LAST:event_btnManageUserAccountActionPerformed

    private void btnBestCitizenActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBestCitizenActionPerformed
        // TODO add your handling code here:
        BestCitizen manageNetworkJPanel = new BestCitizen(userProcessContainer, account);
        userProcessContainer.add("manageNetworkJPanel", manageNetworkJPanel);
        CardLayout layout = (CardLayout) userProcessContainer.getLayout();
        layout.next(userProcessContainer);   
    }//GEN-LAST:event_btnBestCitizenActionPerformed

    private void btnBestRestaurantActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnBestRestaurantActionPerformed
        // TODO add your handling code here:
        BestRestaurant manageNetworkJPanel = new BestRestaurant(userProcessContainer, account);
        userProcessContainer.add("manageNetworkJPanel", manageNetworkJPanel);
        CardLayout layout = (CardLayout) userProcessContainer.getLayout();
        layout.next(userProcessContainer);   
    }//GEN-LAST:event_btnBestRestaurantActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnBestCitizen;
    private javax.swing.JButton btnBestRestaurant;
    private javax.swing.JButton btnManageUserAccount;
    private javax.swing.JButton btnViewEmployee;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel lblCommunityName;
    // End of variables declaration//GEN-END:variables
}
