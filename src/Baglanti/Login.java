/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Baglanti;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author UsErim
 */
public class Login {
    
    PreparedStatement ps;
    ResultSet rs;
    
    public int giris(String kadi,String sifre) throws SQLException{
        Baglanti.VeritabaniBaglanti vb = new Baglanti.VeritabaniBaglanti();
        vb.baglan();
        
        String sorgu = "Select sifre From kullanicilar where kadi = ?";
        ps = vb.con.prepareStatement(sorgu);
        ps.setString(1, kadi);
        rs = ps.executeQuery();
        while(rs.next()){
            String pw = rs.getString("sifre");
            if(pw.equals(sifre) && sifre.equals("root")){
                return 2;
            }
            else if(pw.equals(sifre)){
                return 1;
            }
            else{
                return 0;
            }
        }
        return 0;
    }
    
}
