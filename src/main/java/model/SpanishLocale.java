package model;

import java.util.ListResourceBundle;

public class SpanishLocale extends ListResourceBundle {

    @Override
    protected Object[][] getContents() { return contents; }

    static final Object[][] contents = {
            {"GB", "Great Britain"},
            {"US", "United States"},
            {"RU", "Russia"},
            {"DE", "Germany"},
            {"PL", "Poland"},
            {"ES", "Spanish"},
            {"welcome message", "Hola"},
            {"welcome","Welcome to my website!"},
            {"date", "Date"},
            {"purchase price", "Purchase price"},
            {"countries names", "Names of countries"},
            {"favorite words", "Favorite words"},
            {"list of favorite words", "brexit, queen, Empire"}
    };
}