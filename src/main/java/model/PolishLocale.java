package model;

import java.util.ListResourceBundle;

public class PolishLocale extends ListResourceBundle {

    @Override
    protected Object[][] getContents() { return contents; }

    static final Object[][] contents = {
            {"GB", "Wielka Brytania"},
            {"US", "Stany Zjednoczone"},
            {"RU", "Rosja"},
            {"DE", "Niemcy"},
            {"PL", "Polska"},
            {"ES", "Spanish"},
            {"welcome message", "Komunikat powitalny"},
            {"welcome", "Witaj na mojej stronie!"},
            {"date", "Data"},
            {"purchase price", "Cena zakupu"},
            {"countries names", "Nazwy krajów"},
            {"favorite words", "Ulubione słowa"},
            {"list of favorite words", "programowanie, Java, Kotlin"}
    };
}