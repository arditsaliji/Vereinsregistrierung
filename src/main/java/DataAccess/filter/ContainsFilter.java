package DataAccess.filter;

public class ContainsFilter implements Filter {

    private VereinColumns column;
    private String value;
    private boolean contains;

    public ContainsFilter(VereinColumns column, String value, boolean contains) {
        this.column = column;
        this.value = value;
        this.contains = contains;
    }

    @Override
    public String getCondition() {
        StringBuilder sb = new StringBuilder();
        if (value != null && !value.equals("")) {
            sb.append("(");
            sb.append(column.name());
            if (!contains) sb.append(" NOT");
            sb.append(" LIKE '%");
            sb.append(value);
            sb.append("%')");
        }
        return sb.toString();
    }

}
