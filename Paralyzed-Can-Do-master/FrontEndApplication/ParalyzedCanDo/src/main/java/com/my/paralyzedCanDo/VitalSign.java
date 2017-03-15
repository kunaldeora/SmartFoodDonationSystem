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

@Entity
@Table(name="vitalsign")
@NamedNativeQuery(
		name="pr_fetch_vital_sign",
		query ="call pr_fetch_vital_sign()",
		resultClass = VitalSign.class
		)
public class VitalSign {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int vitalSignId;
	
	@Column(name="systolic_bpRate")
	private int systolic_bpRate;
	
	@Column(name="diastolic_bpRate")
	private int diastolic_bpRate;
	
	@Column(name="heartRate")
	private int heartRate;
	
	@Column(name="respiratoryRate")
	private int respiratoryRate; 
	
	@Column(name="status")
	private String status;
	
	@Column(name="timestamp")
	@Temporal(TemporalType.TIMESTAMP)
	private Date timestamp;

	public VitalSign(){
		
	}
	
	public int getRespiratoryRate() {
		return respiratoryRate;
	}

	public void setRespiratoryRate(int respiratoryRate) {
		this.respiratoryRate = respiratoryRate;
	}

	public int getVitalSignId() {
		return vitalSignId;
	}

	public void setVitalSignId(int vitalSignId) {
		this.vitalSignId = vitalSignId;
	}

	public int getSystolic_bpRate() {
		return systolic_bpRate;
	}

	public void setSystolic_bpRate(int systolic_bpRate) {
		this.systolic_bpRate = systolic_bpRate;
	}

	public int getDiastolic_bpRate() {
		return diastolic_bpRate;
	}

	public void setDiastolic_bpRate(int diastolic_bpRate) {
		this.diastolic_bpRate = diastolic_bpRate;
	}

	public int getHeartRate() {
		return heartRate;
	}

	public void setHeartRate(int heartRate) {
		this.heartRate = heartRate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Date timestamp) {
		this.timestamp = timestamp;
	}
	
	

}
