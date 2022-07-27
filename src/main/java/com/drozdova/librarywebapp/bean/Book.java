package com.drozdova.librarywebapp.bean;

import java.util.Objects;

public class Book {
    private int id;
    private String title;
    private int idGenre;
    private int year;
    private int pages;
    private String language;

    public Book(int id, String title, int idGenre, int year, int pages, String language) {
        this.id = id;
        this.title = title;
        this.idGenre = idGenre;
        this.year = year;
        this.pages = pages;
        this.language = language;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getIdGenre() {
        return idGenre;
    }

    public void setIdGenre(int idGenre) {
        this.idGenre = idGenre;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getPages() {
        return pages;
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Book book = (Book) o;
        return getId() == book.getId() && getIdGenre() == book.getIdGenre() && getYear() == book.getYear() && getPages() == book.getPages() && Objects.equals(getTitle(), book.getTitle()) && Objects.equals(getLanguage(), book.getLanguage());
    }

    @Override
    public int hashCode() {
        return Objects.hash(getId(), getTitle(), getIdGenre(), getYear(), getPages(), getLanguage());
    }

    @Override
    public String toString() {
        return getClass().getSimpleName()+"{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", idGenre=" + idGenre +
                ", year=" + year +
                ", pages=" + pages +
                ", language='" + language + '\'' +
                '}';
    }
}
