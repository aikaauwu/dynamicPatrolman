package patrol.model;

import java.util.Date;

public class scheduleModel {
	private String scheduleId;
	private String scheduleDate;
	private String patrolmanId;
	private String scheduleTime;
	private String locationId;
	//ajax
	
	public String getScheduleId() { 
		return scheduleId;
	}
	public void setScheduleId(String scheduleId) {
		this.scheduleId = scheduleId;
	}
	
	public String getPatrolmanId() { 
		return patrolmanId;
	}
	public void setPatrolmanId(String patrolmanId) {
		this.patrolmanId = patrolmanId;
	}
	
	public String getScheduleTime() {
		return scheduleTime;
	}
	public void setScheduleTime(String scheduleTime) {
		this.scheduleTime = scheduleTime;
	}
	
	public String getScheduleDate() {
		return scheduleDate;
	}
	public void setScheduleDate(String scheduleDate) {
		this.scheduleDate = scheduleDate;
	}
	
	public String getLocationId() {
		return locationId;
	}
	public void setLocationId(String locationId) {
		this.locationId = locationId;
	}


}
