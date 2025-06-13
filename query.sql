SELECT
  year,
  month,
  SUM(revenue) AS total_revenue,
  SUM(cost) AS total_cost
FROM (
  SELECT
    EXTRACT(YEAR FROM co.date) AS year,
    EXTRACT(MONTH FROM co.date) AS month,
    0 AS revenue,
    SUM(co.cost) AS cost
  FROM
    `data-analytics-mate.DA.paid_search_cost` AS co
  GROUP BY
    year,
    month


  UNION ALL


  SELECT
    EXTRACT(YEAR FROM ss.date) AS year,
    EXTRACT(MONTH FROM ss.date) AS month,
    SUM(pr.price) AS revenue,
    0 AS cost
  FROM
    `data-analytics-mate.DA.order` AS ord
  JOIN
    `data-analytics-mate.DA.product` AS pr
  ON
    ord.item_id = pr.item_id
  JOIN
    `data-analytics-mate.DA.session` AS ss
  ON
    ord.ga_session_id = ss.ga_session_id
  GROUP BY
    year,
    month
) AS combined_data
GROUP BY
  year,
  month
ORDER BY
  year,
  month;
