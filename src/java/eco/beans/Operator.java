package eco.beans;

public class Operator
{
    private int id;
    private String password;
    private String npass;
    private String cpass;

    public Operator() {
    }
    

    public Operator(int loginId, String password) {
        this.id = id;
        this.password = password;
    }

    /**
     * @return the loginId
     */
  

    /**
     * @param loginId the loginId to set
     */
  
    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNpass() {
        return npass;
    }

    public void setNpass(String npass) {
        this.npass = npass;
    }

    public String getCpass() {
        return cpass;
    }

    public void setCpass(String cpass) {
        this.cpass = cpass;
    }
    
    
}