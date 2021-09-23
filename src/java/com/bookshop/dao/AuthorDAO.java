/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bookshop.dao;

import com.bookshop.beans.Author;
import com.bookshop.utils.Connect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

/**
 *
 * @author Claud
 */
public class AuthorDAO {
    
    Connection connect = Connect.getInstance();
    private static final String SELECT_AUTHOR = "SELECT * FROM [BookShop].[dbo].[Author]";
    
    public Collection allAuthor() {
        Collection authors = new ArrayList();
        try {
            PreparedStatement pstmt = connect.prepareStatement(SELECT_AUTHOR);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                String fullName = rs.getString("AuthorFirstname") + " "
                        + rs.getString("AuthorLastname");
                Author p = new Author(fullName);
                authors.add(p);
            }
            return authors;
        } catch (SQLException ex) {
            System.err.println("Oops:SQL:" + ex.getErrorCode() + ":" + ex.getMessage());
        }
        return authors;
    }
    
}
