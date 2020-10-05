package model;

import java.util.ListResourceBundle;

public class RussianLocale extends ListResourceBundle {

    @Override
    protected Object[][] getContents() { return contents; }

    static final Object[][] contents = {
            {"GB", "Великобритания"},
            {"US", "Соединенные Штаты"},
            {"RU", "Россия"},
            {"DE", "Германия"},
            {"PL", "Польша"},
            {"ES", "Spanish"},
            {"welcome message", "Приветственное сообщение"},
            {"welcome", "Добро пожаловать на мой сайт!"},
            {"date", "Дата"},
            {"purchase price", "Покупная цена"},
            {"countries names", "Названия стран"},
            {"favorite words", "Любимые слова"},
            {"list of favorite words", "самогонная водка, водка, армия, Владимир Путин"}
    };
}