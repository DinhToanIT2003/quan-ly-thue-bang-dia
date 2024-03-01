/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package control;

import dao.AccountDao;
import model.Acount;
/**
 *
 * @author vduct
 */
public class LoginService {
    private AccountDao accDao;
    private static String id;

    public static String getId() {
        return id;
    }
    
    
    
    public LoginService(){
        accDao = new AccountDao();
    }
    
    /**
     * KIỂM TRA TÀI KHOẢN
     * @param id
     * @param pass
     * @return 
     */
    public int checkAccount(String id, String pass){
        Acount acc = accDao.getAcc(id);
        if(acc == null){
            return -1;
        }
        if(acc.getPass().equals(pass) && acc.getTT().equals("enable")){
            this.id = id;
            return acc.getRole();
        } else {
            return -1;
        }
    }
    
}
