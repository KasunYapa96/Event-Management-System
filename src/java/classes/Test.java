/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class Test {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        Core functions = new Core();
        int x =2;
        String op = functions.getUserEventOpinion(x, 5);
        System.out.println(op);
        /*
        if(!op.equals("GOING") || !op.equals("INTERESTED") || !op.equals("MAYBE")){
            System.out.println("xxxxx");
        }
*/
        if(!op.equals("")){
            System.out.println("xxxxx");
        }
    }
}
