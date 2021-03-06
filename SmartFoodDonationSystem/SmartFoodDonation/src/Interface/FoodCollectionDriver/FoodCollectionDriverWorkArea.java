/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interface.FoodCollectionDriver;

import Business.Community.Community;
import Business.Employee.FoodCollectionDriverEmployee;
import Business.Organization.FoodStandardOrganization;
import Business.UserAccount.UserAccount;
import Business.WorkQueue.FoodCollectionWorkRequest;
import Business.WorkQueue.FoodStandardWorkRequest;
import Business.WorkQueue.WorkRequest;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.Timer;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author kunal
 */
public class FoodCollectionDriverWorkArea extends javax.swing.JPanel {

    /**
     * Creates new form FoodCollectionDriverWorkArea
     */
    private JPanel userProcessContainer;
    private UserAccount account ; 
    private Community community;
    private FoodStandardOrganization organization;

    public FoodCollectionDriverWorkArea(JPanel userProcessContainer,UserAccount account ) {
        this.userProcessContainer = userProcessContainer;
        this.account = account;
        community = account.getEmployee().getCommunityAssociated();
        organization = community.getFoodStandardOrg();
        initComponents();
        populateTable();
        tblFoodCollectionDriver.getTableHeader().setFont(new Font("Tahoma", Font.PLAIN, 18));
    }
    
    public void populateTable(){
        
        DefaultTableModel model = (DefaultTableModel) tblFoodCollectionDriver.getModel();
        model.setRowCount(0);
        for(WorkRequest request : account.getWorkQueue().getWorkRequestList()){
            if(!request.getStatus().endsWith("Food Delivered to Standard Authority") ){
                    Object[] row = new Object[5];
                    row[0] = ((FoodCollectionWorkRequest) request);
                    row[1] = ((FoodCollectionWorkRequest) request).getSender();
                    row[2] = ((FoodCollectionWorkRequest) request).getSender().getEmployee().getAddress();
                    row[3] = ((FoodCollectionWorkRequest) request).getMessage();
                    row[4] = ((FoodCollectionWorkRequest) request).getStatus();
                    model.addRow(row);
            }   
            
        }    
        
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
        jScrollPane1 = new javax.swing.JScrollPane();
        tblFoodCollectionDriver = new javax.swing.JTable();
        lblComments = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        txtComments = new javax.swing.JTextArea();
        btnProcessRequest = new javax.swing.JButton();

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 24)); // NOI18N
        jLabel1.setText("Food Collection Driver Work Area");

        tblFoodCollectionDriver.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null}
            },
            new String [] {
                "Food", "Sender", "Food Collection Address", "Message", "Status"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Object.class, java.lang.Object.class, java.lang.String.class, java.lang.String.class, java.lang.String.class
            };
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        tblFoodCollectionDriver.getTableHeader().setReorderingAllowed(false);
        jScrollPane1.setViewportView(tblFoodCollectionDriver);

        lblComments.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lblComments.setText("Comments:");

        txtComments.setColumns(20);
        txtComments.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        txtComments.setRows(5);
        jScrollPane2.setViewportView(txtComments);

        btnProcessRequest.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btnProcessRequest.setText("Process Request >>");
        btnProcessRequest.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnProcessRequestActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(lblComments)
                        .addGap(30, 30, 30)
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 367, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(btnProcessRequest)))
                .addContainerGap())
            .addGroup(layout.createSequentialGroup()
                .addGap(401, 401, 401)
                .addComponent(jLabel1)
                .addGap(0, 533, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addGap(34, 34, 34)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 122, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(58, 58, 58)
                        .addComponent(lblComments))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(65, 65, 65)
                        .addComponent(btnProcessRequest)))
                .addContainerGap(319, Short.MAX_VALUE))
        );
    }// </editor-fold>//GEN-END:initComponents

    Timer t;
    int interval = 1000;
    int i ;
    private void btnProcessRequestActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnProcessRequestActionPerformed
        // TODO add your handling code here:
         int selectedRow = tblFoodCollectionDriver.getSelectedRow();
        
         if (selectedRow < 0){
            JOptionPane.showMessageDialog(null, "Please select the row from the table");
            return;
         }
         
         btnProcessRequest.setEnabled(false);
         btnProcessRequest.setName("Processing..");
         
         FoodCollectionWorkRequest request = (FoodCollectionWorkRequest) tblFoodCollectionDriver.getValueAt(selectedRow, 0);
         if(txtComments.getText().isEmpty()){             
             request.setMessage("Request in progress");
         }
         else{
             request.setMessage(txtComments.getText());
         }
         request.setStatus("Pick Up in Progress");
         
         t = new Timer(interval, new ActionListener() {

             @Override
             public void actionPerformed(ActionEvent e) {
                if(i ==100){
                    t.stop();
                      request.setStatus("Food Delivered to Standard Authority");      
                      ((FoodCollectionDriverEmployee)account.getEmployee()).setIsBusy(false);                      
                      FoodStandardWorkRequest standardRequest = new FoodStandardWorkRequest();
                         standardRequest.setFood(request.getFood());
                         standardRequest.setMessage("Food Package received");                         
                         standardRequest.setCollectorDriver(account);                         
                         standardRequest.setStatus("Pending");
                         standardRequest.setCitizen(request.getCitizen());
                         //-----Set value from previous REQUEST-----
                         standardRequest.setSender(request.getSender());
                         standardRequest.setRequestDate(request.getRequestDate());
                         
                         btnProcessRequest.setEnabled(true);
                          btnProcessRequest.setName("Process Request >>");
                         
                        organization.getWorkQueue().getWorkRequestList().add(standardRequest);
                        JOptionPane.showMessageDialog(null, "Package Delivered to food Standard Authority");
                        populateTable();
                }
                else{
                    i = i+50;      
                    request.setStatus("Food Collected");
                    populateTable();
                }
             }
         } );
         
         t.start();
           
        
    }//GEN-LAST:event_btnProcessRequestActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnProcessRequest;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JLabel lblComments;
    private javax.swing.JTable tblFoodCollectionDriver;
    private javax.swing.JTextArea txtComments;
    // End of variables declaration//GEN-END:variables
}
