package eco.beans;

public class EmpRequest 
{
    private int id;
    private String empmail1;
    private String cabtype;
    private String sharingchoice;
    private String empdestination;
    private int amount;
    private String date;
    private String time;

    public EmpRequest() {
    }

    public EmpRequest(int id, String empmail1, String cabtype, String sharingchoice, String empdestination, int amount, String date, String time) {
        this.id = id;
        this.empmail1 = empmail1;
        this.cabtype = cabtype;
        this.sharingchoice = sharingchoice;
        this.empdestination = empdestination;
        this.amount = amount;
        this.date = date;
        this.time = time;
    }

    /**
     * @return the id1
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the empmail1
     */
    public String getEmpmail1() {
        return empmail1;
    }

    /**
     * @param empmail1 the empmail1 to set
     */
    public void setEmpmail1(String empmail1) {
        this.empmail1 = empmail1;
    }

    /**
     * @return the cabtype
     */
    public String getCabtype() {
        return cabtype;
    }

    /**
     * @param cabtype the cabtype to set
     */
    public void setCabtype(String cabtype) {
        this.cabtype = cabtype;
    }

    /**
     * @return the sharingchoice
     */
    public String getSharingchoice() {
        return sharingchoice;
    }

    /**
     * @param sharingchoice the sharingchoice to set
     */
    public void setSharingchoice(String sharingchoice) {
        this.sharingchoice = sharingchoice;
    }

    /**
     * @return the empdestination
     */
    public String getEmpdestination() {
        return empdestination;
    }

    /**
     * @param empdestination the empdestination to set
     */
    public void setEmpdestination(String empdestination) {
        this.empdestination = empdestination;
    }

    /**
     * @return the amount
     */
    public int getAmount() {
        return amount;
    }

    /**
     * @param amount the amount to set
     */
    public void setAmount(int amount) {
        this.amount = amount;
    }

    /**
     * @return the date
     */
    public String getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(String date) {
        this.date = date;
    }

    /**
     * @return the time
     */
    public String getTime() {
        return time;
    }

    /**
     * @param time the time to set
     */
    public void setTime(String time) {
        this.time = time;
    }

}