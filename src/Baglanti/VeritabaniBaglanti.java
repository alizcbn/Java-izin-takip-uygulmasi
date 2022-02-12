/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Baglanti;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;


/**
 *
 * @author UsErim
 */
public class VeritabaniBaglanti {
    
    private String url = "jdbc:mysql://localhost:3306/";
    private String driver= "com.mysql.jdbc.Driver";
    private String dbname= "izintakip";
    private String userName = "root";
    private String password = "987412365";
    
    public Connection con;
    public Statement stmt;
    
    public void baglan(){
        try {
            Class.forName(driver).newInstance();
            con = DriverManager.getConnection(url+dbname,userName,password);
            //JOptionPane.showMessageDialog(null, "Veritabanına bağlantı başarılı");
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Hata: "+ ex);
        }
    }
    
}
