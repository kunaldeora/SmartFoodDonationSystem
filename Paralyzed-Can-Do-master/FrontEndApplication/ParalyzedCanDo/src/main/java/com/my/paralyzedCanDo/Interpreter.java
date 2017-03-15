package com.my.paralyzedCanDo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedNativeQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import java.util.Date;

@NamedNativeQuery(
		name="pr_insert_into_interpretor",
		query ="call pr_insert_into_interpretor(:action, :v_id)",
		resultClass = Interpreter.class
		)
@Entity
@Table(name="interpreter")
public class Interpreter {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int interpreterId;
	
	
	
	@Column(name="vitalSign_id")
	private int vitalSign_id;
	

	@Column(name="action")
	private String action;
	

	public Interpreter(){
		
	}


	public int getInterpreterId() {
		return interpreterId;
	}


	public void setInterpreterId(int interpreterId) {
		this.interpreterId = interpreterId;
	}


	public int getVitalSign_id() {
		return vitalSign_id;
	}


	public void setVitalSign_id(int vitalSign_id) {
		this.vitalSign_id = vitalSign_id;
	}


	public String getAction() {
		return action;
	}


	public void setAction(String action) {
		this.action = action;
	}	
	
	
	
}
