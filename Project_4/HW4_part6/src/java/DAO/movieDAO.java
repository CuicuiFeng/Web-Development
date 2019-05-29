/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
import POJO.movie;
import java.sql.*;
import java.util.*;
import org.apache.commons.dbutils.*;
import org.apache.commons.dbutils.handlers.*;
/**
 *
 * @author fengcu
 */
public class movieDAO {
    public List<movie> getMovies(String type, String keyword) {
        Connection connection = null;
        List<movie> result = null;
        
        try {
            DAO dbdao = new DAO();
            connection = dbdao.getConnection();
            QueryRunner queryRunner = new QueryRunner();
            ResultSetHandler<List<movie>> handler = new BeanListHandler<movie>(movie.class);
            String query = "";
            if (type.equals("title")) {
                query = "select * from movies where title = ?";
            } 
            else if (type.equals("actor")) {
                query = "select * from movies where actor = ?";
            } 
            else if (type.equals("actress")) {
                query = "select * from movies where actress = ?";
            }
            result = queryRunner.query(connection, query, handler, keyword);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return result;
    }
    
    public int addMovie(String title, String actor, String actress, String genre, int year) {
        Connection connection = null;
        int result = 0;
        
        try {
            DAO dbdao = new DAO();
            connection = dbdao.getConnection();
            QueryRunner queryRunner = new QueryRunner();
            String query = "insert into movies (title, actor, actress, genre, year) values (?, ?, ?, ?, ?)";
            result = queryRunner.update(connection, query, title, actor, actress, genre, year);
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
        return result;
    }
    
}
