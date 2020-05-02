package myPackage;
public class AnalyzedDataDTO 
{
 private String consumerId;
 private String transformerId;
 private String startTime;
 private String endTime;
 private String totalPowerconsumed;
 private String totalPowergeneration;
 private String technicalLoss;

 public void setConsumerId(String consumerId)
 {
	 this.consumerId = consumerId;
 }
 
 public void setTransformerId(String transformerId)
 {
	 this.transformerId = transformerId;
 }
 public void setStartTime(String starttime)
 {
	 this.startTime = starttime;
 }
 public void setEndTime(String endtime)
 {
	 this.endTime = endtime;
 }
 public void setTotalPowerconsumed(String totalpowerconsumed)
 {
	 this.totalPowerconsumed = totalpowerconsumed;
 }
 public void setTotalPowergeneration(String totalpowergeneration)
 {
	 this.totalPowergeneration = totalpowergeneration;
 }
 public void setTechnicalLoss(String technicalloss)
 {
	 this.technicalLoss = technicalloss;
 } 
 
 
 
 public String getConsumerId()
 {
	 return this.consumerId;
 }
 public String getTransformerId()
 {
	 return this.transformerId;
 }
public String getStartTime()
 {
	 return this.startTime;
 }
public String getEndTime()
 {
	 return this.endTime;
 }
public String getTotalPowerconsumed()
 {
	 return this.totalPowerconsumed;
 }
public String getTotalPowergeneration()
 {
	 return this.totalPowergeneration;
 }
public String getTechnicalLoss()
 {
	 return this.technicalLoss;
 }
 
}