# monthly-revenue-cost-report-bq
SQL query to group and compare monthly revenue and advertising costs using BigQuery. Uses UNION ALL and aggregation by year/month.

SQL query for comparing monthly revenue and advertising costs using BigQuery.  
Groups values by year and month with a unified structure via `UNION ALL`.

## Objective

The goal of this query is to:
- Extract revenue from e-commerce orders
- Extract advertising costs from paid search data
- Group both by year and month
- Provide a clean, unified report with totals per month

## Output Columns

| Column          | Description                              |
|-----------------|------------------------------------------|
| `year`          | Calendar year                            |
| `month`         | Calendar month                           |
| `total_revenue` | Sum of revenue from product orders       |
| `total_cost`    | Sum of costs from paid search campaigns  |

## SQL Features Used

- `EXTRACT()` for getting year/month
- `UNION ALL` to merge revenue and cost into one structure
- Aggregation with `SUM()` and `GROUP BY`
- Clean ordering of results by time

## Files

- `query.sql` — main SQL query
- `README.md` — documentation

---

> Perfect for building financial overviews, budgeting dashboards, or monthly business reports.
