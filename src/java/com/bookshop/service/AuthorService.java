package com.bookshop.service;

import com.bookshop.dao.AuthorDAO;
import java.util.Collection;

public class AuthorService {
    
    public Collection allAuthor() {
        AuthorDAO category = new AuthorDAO();
        return category.allAuthor();
    }
}
