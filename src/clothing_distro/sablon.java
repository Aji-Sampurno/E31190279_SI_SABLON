package clothing_distro;
public class sablon {
    public static void main(String[] args) {
        splash s=new splash();
        s.setVisible(true);
        home h=new home();
        try
        {
        for(int i=0;i<=100;i++)
        {
        Thread.sleep(30);
        s.loadingnum.setText(Integer.toString(i)+"%");
        s.loadingbar.setValue(i);
        if(i==100)
        {
        s.setVisible(false);
        h.setVisible(true);
        }
        }
        }catch (Exception e)
        {
            
        }
    }

    void setVisible(boolean b) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
