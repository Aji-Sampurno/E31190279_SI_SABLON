package clothing_distro;

import java.sql.*;
import javax.swing.JOptionPane;
/**
 *
 * @author AJI SAMPURNO
 */
public class Koneksi 
{
    com.sun.jdi.connect.spi.Connection getConnection;
    
    public Koneksi(){
    }
    public static Connection bukaKoneksi()throws SQLException{
        Connection con=null;
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/sablon?serverTimezone=UTC","root","");
            //JOptionPane.showMessageDialog(null,"Selamat Anda Sudah Terhubung Dengan Data Base");
            //System.out.println("Connection Success");
            return con;
        }
        catch(SQLException se){
            //menampilkan pesan Jika Belum Terhubung
            JOptionPane.showMessageDialog(null,"Coba Lagi");
            System.out.println("No Connection open");
            return null;
        }
        catch(Exception ex){
            //menampilkan pesan Jika Tidak Ada Data Base yang tersedia
            JOptionPane.showMessageDialog(null,"Tidak Ditemukan");
            System.out.println("Cound not open connection");
            return null;
        }
        
    }//Fungsi main untuk eksekusi Program
    public static void main(String[] args) throws SQLException {
        bukaKoneksi();//memanggil Fungsi untuk di eksekusi
    }
}