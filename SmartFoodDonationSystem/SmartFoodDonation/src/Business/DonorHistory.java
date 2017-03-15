/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Business;

import Business.Employee.CitizenEmployee;

/**
 *
 * @author kunal
 */
public class DonorHistory {
    
    private CitizenEmployee c;
    private int count;

    public CitizenEmployee getC() {
        return c;
    }

    public void setC(CitizenEmployee c) {
        this.c = c;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }
    
    
    public void appendCount(){
        count++;
    }
    
    
    
}
