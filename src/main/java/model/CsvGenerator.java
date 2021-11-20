package model;

import DataAccess.VereinDataAccess;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

public class CsvGenerator {
    private VereinDataAccess vereinDataAccess;

    public CsvGenerator() {
        this.vereinDataAccess = new VereinDataAccess();
    }

    public void generateCsv() throws Exception {
        List<String[]> dataLines = new ArrayList<>();
        List<Verein> vereine = vereinDataAccess.getVereine();

        for (Verein verein : vereine) {
            dataLines.add(new String[]
                    {verein.getName(), verein.getZweck(), verein.getKategorie(), verein.getAdresse(), verein.getEntstehung(), verein.getObmann() });
        }

        File csvOutputFile = new File("/Users/arditsaliji/Desktop/Master-WINF/Service-Engineering/alle_vereine.csv");
        try (PrintWriter pw = new PrintWriter(csvOutputFile)) {
            dataLines.stream()
                    .map(this::convertToCSV)
                    .forEach(pw::println);
        }
    }

    private String convertToCSV(String[] data) {
        return String.join(",", data);
    }
}
