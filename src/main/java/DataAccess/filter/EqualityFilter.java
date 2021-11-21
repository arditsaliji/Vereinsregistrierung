package DataAccess.filter;

public class EqualityFilter implements Filter {

    private VereinColumns column;
    private String value;
    private boolean equal;

    public EqualityFilter(VereinColumns column, String value, boolean equal) {
        this.column = column;
        this.value = value;
        this.equal = equal;
    }

    @Override
    public String getCondition() {
        StringBuilder sb = new StringBuilder();
        if (value != null && !value.equals("")) {
            sb.append("(");
            sb.append(column.name());
            if (!equal) sb.append(" NOT");
            sb.append(" LIKE '");
            sb.append(value);
            sb.append("')");
        }
        return sb.toString();
    }

}
