package patrol.model;

public class Report{
	
	private String reportId;
	private String patrolmanId;
	private String reportDescription;
	private String reportTimeSubmit;
	
	public String getReportId() {
		return reportId;
	}
	public void setReportId(String reportId) {
		this.reportId = reportId;
	}
	public String getPatrolmanId() {
		return patrolmanId;
	}
	public void setPatrolmanId(String patrolmanId) {
		this.patrolmanId = patrolmanId;
	}
	public String getReportDescription() {
		return reportDescription;
	}
	public void setReportDescription(String reportDescription) {
		this.reportDescription = reportDescription;
	}
	public String getReportTimeSubmit() {
		return reportTimeSubmit;
	}
	public void setReportTimeSubmit(String reportTimeSubmit) {
		this.reportTimeSubmit = reportTimeSubmit;
	}
}