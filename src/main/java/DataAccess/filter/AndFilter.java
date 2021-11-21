package DataAccess.filter;

public class AndFilter implements Filter {

    Filter[] filter;

    public AndFilter(Filter... filter) {
        this.filter = filter;
    }

    @Override
    public String getCondition() {
        int size = 0;
        StringBuilder sb = new StringBuilder();
        for (Filter f : filter) {
            size++;
            sb.append(f.getCondition());
            if (size != filter.length) sb.append(" AND ");
        }
        if (!sb.toString().equals("")) {
            return "(" + sb + ")";
        }
        return sb.toString();
    }

    public static void main(String[] args) {
        ContainsFilter containsFilter = new ContainsFilter(VereinColumns.NAME, "eu", true);
        System.out.println(containsFilter.getCondition());
        System.out.println(new AndFilter(containsFilter).getCondition());
    }

}
