SELECT
  "t3"."n_nationkey",
  "t3"."n_name",
  "t3"."n_regionkey",
  "t3"."n_comment",
  "t4"."r_regionkey",
  "t4"."r_name",
  "t4"."r_comment",
  "t5"."c_custkey",
  "t5"."c_name",
  "t5"."c_address",
  "t5"."c_nationkey",
  "t5"."c_phone",
  "t5"."c_acctbal",
  "t5"."c_mktsegment",
  "t5"."c_comment"
FROM "tpch_nation" AS "t3"
INNER JOIN "tpch_region" AS "t4"
  ON "t3"."n_regionkey" = "t4"."r_regionkey"
INNER JOIN "tpch_customer" AS "t5"
  ON "t3"."n_nationkey" = "t5"."c_nationkey"