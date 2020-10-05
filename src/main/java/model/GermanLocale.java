package model;

import java.util.ListResourceBundle;

public class GermanLocale extends ListResourceBundle {

    @Override
    protected Object[][] getContents() { return contents; }

    static final Object[][] contents = {
            {"GB", "Großbritannien"},
            {"US", "Den Vereinigten Staaten"},
            {"RU", "Russland"},
            {"DE", "Deutschland"},
            {"PL", "Polen"},
            {"ES", "Spanish"},
            {"welcome message", "Willkommensnachricht"},
            {"welcome", "Herzlich willkommen auf meiner Website!"},
            {"date", "Datum"},
            {"purchase price", "Kaufpreis"},
            {"countries names", "Ländernamen"},
            {"favorite words", "Lieblingswörter"},
            {"list of favorite words", "wurst, bierwurst, bier, Volkswagen"}
    };
}