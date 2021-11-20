package model;

import DataAccess.VereinDataAccess;
import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import java.io.FileOutputStream;
import java.util.List;
import java.util.stream.Stream;

public class PdfGenerator {
    private VereinDataAccess vereinDataAccess;

    public PdfGenerator() {
        this.vereinDataAccess = new VereinDataAccess();
    }

    public void generatePdf() throws Exception {
        Document document = new Document();
        PdfWriter.getInstance(document, new FileOutputStream("/Users/arditsaliji/Desktop/Master-WINF/Service-Engineering/alle_vereine.pdf"));
        document.open();

        PdfPTable table = new PdfPTable(3);
        addTableHeader(table);
        addRows(table);

        document.add(table);
        document.close();
    }

    private void addTableHeader(PdfPTable table) {
        Stream.of("Name", "Entstehung", "Obmann")
                .forEach(columnTitle -> {
                    PdfPCell header = new PdfPCell();
                    header.setBackgroundColor(BaseColor.LIGHT_GRAY);
                    header.setBorderWidth(2);
                    header.setPhrase(new Phrase(columnTitle));
                    table.addCell(header);
                });
    }

    private void addRows(PdfPTable table) throws Exception {
        List<Verein> vereine = vereinDataAccess.getVereine();
        for (Verein verein : vereine) {
            table.addCell(verein.getName());
            table.addCell(verein.getEntstehung());
            table.addCell(verein.getObmann());
        }
    }
}
