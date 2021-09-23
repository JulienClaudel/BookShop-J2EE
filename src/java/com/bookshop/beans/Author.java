package com.bookshop.beans;
/**
 *
 * @author CDA606
 */
public class Author {
    
    
    private String fullName;
    

    public Author() {

    }

    public Author(String fullName) {
        this.fullName = fullName;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
}
