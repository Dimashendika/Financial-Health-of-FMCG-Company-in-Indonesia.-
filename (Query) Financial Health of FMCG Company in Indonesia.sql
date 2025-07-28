USE Unilever;

--- Create SQL Database ---

--  balance_sheet

CREATE TABLE balance_sheet (
    Year INT,
    Company VARCHAR(50),
    Total_Assets BIGINT,
    Total_Liabilities BIGINT,
    Total_Equity BIGINT,
    Total_Current_Assets BIGINT,
    Total_Current_Liabilities BIGINT
);

INSERT INTO balance_sheet
(Year, Company, Total_Assets, Total_Liabilities, Total_Equity, Total_Current_Assets, Total_Current_Liabilities)
VALUES
(2020, 'Unilever', 20534632000000, 15597264000000, 4937368000000, 8828360000000, 13357536000000),
(2021, 'Unilever', 19068532000000, 14747263000000, 4321269000000, 7642208000000, 12445152000000),
(2022, 'Unilever', 18318114000000, 14320858000000, 3997256000000, 7567768000000, 12442223000000),
(2023, 'Unilever', 16664086000000, 13282848000000, 3381238000000, 6191839000000, 11223968000000),
(2024, 'Unilever', 16046195000000, 13896928000000, 2149267000000, 5280548000000, 11830201000000),

(2020, 'Indofood', 163136516000000, 83998472000000, 79138044000000, 38418238000000, 27975875000000),
(2021, 'Indofood', 179356193000000, 92724082000000, 86632111000000, 54183399000000, 40403404000000),
(2022, 'Indofood', 180433300000000, 86810262000000, 93623038000000, 54876668000000, 30725942000000),
(2023, 'Indofood', 186587957000000, 86123066000000, 100464891000000, 63101797000000, 32914504000000),
(2024, 'Indofood', 201713313000000, 92722030000000, 108991283000000, 79765476000000, 37094061000000),

(2020, 'Mayora', 19777500514550, 8506032464592, 11271468049958, 12838729162094, 3559336027729),
(2021, 'Mayora', 19917653265528, 8557621869393, 11360031396135, 12969783874643, 5570773468770),
(2022, 'Mayora', 22276160695411, 9441466604896, 12834694090515, 14772623976128, 5636627301308),
(2023, 'Mayora', 23870404962472, 8588315775736, 15282089186736, 14738922387529, 4013200501414),
(2024, 'Mayora', 29728781933757, 12626353599187, 17102428334570, 19600914916989, 7383110635195);

-- Check
SELECT *
FROM balance_sheet;

-- income statement

CREATE TABLE income_statement (
    Year INT,
    Company VARCHAR(50),
    Revenue BIGINT,
    COGS BIGINT,
    GrossProfit BIGINT,
    OperatingProfit BIGINT,
    NetProfit BIGINT
);

INSERT INTO income_statement(Year, Company, Revenue, COGS, GrossProfit, OperatingProfit, NetProfit) VALUES
(2020, 'Unilever', 42972474000000, 20515484000000, 22456990000000, 9451012000000, 7163536000000),
(2021, 'Unilever', 39545959000000, 19919572000000, 19626387000000, 7679451000000, 5758148000000),
(2022, 'Unilever', 41218881000000, -22153944000000, 19064937000000, 7068808000000, 5364761000000),
(2023, 'Unilever', 38611401000000, -19416887000000, 19194514000000, 6279283000000, 4800940000000),
(2024, 'Unilever', 35138643000000, -18418962000000, 16719681000000, 4414880000000, 3368693000000),

(2020, 'Indofood', 81731469000000, 54979425000000, 26752044000000, 12889087000000, 8752066000000),
(2021, 'Indofood', 99345618000000, 66881557000000, 32464061000000, 16882324000000, 11203585000000),
(2022, 'Indofood', 110830272000000, 76858593000000, 33971679000000, 19693110000000, 9192569000000),
(2023, 'Indofood', 111703611000000, 75653142000000, 36050469000000, 19663598000000, 11493733000000),
(2024, 'Indofood', 115786525000000, 75649996000000, 40136529000000, 23088184000000, 13077496000000),

(2020, 'Mayora', 24476953742651, 17177830782966, 7299122959685, 2830928194155, 2098168514645),
(2021, 'Mayora', 27904558322183, 20981574813780, 6922983508403, 1772315914155, 1211052647953),
(2022, 'Mayora', 30669405967404, 23829982628480, 6839423338924, 2433114641701, 1970064538149),
(2023, 'Mayora', 31485008185525, 23077230426842, 8407777758683, 4299475347200, 3244872091221),
(2024, 'Mayora', 36072949285930, 27770649971673, 8302299314257, 3915364772118, 3067667675407);


-- ADD TotalExpense

ALTER TABLE income_statement ADD TotalExpense BIGINT;

UPDATE income_statement
SET TotalExpense = Revenue - NetProfit;

-- Check
SELECT *
FROM income_statement;

-- cash flow

CREATE TABLE cash_flow (
    Year INT,
    Company VARCHAR(50),
    Net_Cash_Flow_Operating BIGINT,
    Net_Cash_Flow_Investing BIGINT,
    Net_Cash_Flow_Financing BIGINT
);

INSERT INTO cash_flow(Year, Company, Net_Cash_Flow_Operating, Net_Cash_Flow_Investing, Net_Cash_Flow_Financing)
VALUES
(2020, 'Unilever', 8363993000000, 690216000000, 7458509000000),
(2021, 'Unilever', 7902091000000, 681255000000, 7739754000000),
(2022, 'Unilever', 8061314000000, 526063000000, 7357788000000),
(2023, 'Unilever', 7118088000000, 829323000000, 5771276000000),
(2024, 'Unilever', 3959982000000, 1014874000000, 3294681000000),

(2020, 'Indofood', 13855497000000, 37636597000000, 27285509000000),
(2021, 'Indofood', 14692641000000, 6489675000000, 3852424000000),
(2022, 'Indofood', 13624195000000, 3899503000000, 14329188000000),
(2023, 'Indofood', 18460624000000, 10775851000000, 4889846000000),
(2024, 'Indofood', 17507956000000, 6994964000000, 680208000000),

(2020, 'Mayora', 3715832449186, 1111015237138, 1865848198703),
(2021, 'Mayora', 1041955003348, 947614701926, 870693620125),
(2022, 'Mayora', 1619570638186, 1546563424787, 49224058856),
(2023, 'Mayora', 5259181989696, 2359457241900, 1975978291736),
(2024, 'Mayora', 463359496912, 1628862779286, 2428387224779);

-- Check
SELECT *
FROM cash_flow;

--- Simple Analysis ---

-- Revenue and Net Profit Trend

SELECT 
  Company,
  Year,
  Revenue,
  NetProfit
FROM income_statement
ORDER BY Company, Year;

--- Net Profit Margin, ROA, and ROE
SELECT 
  a.Year,
  a.Company,
  a.NetProfit,
  a.Revenue,
  b.Total_Assets,
  b.Total_Equity,
  ROUND(1.0 * a.NetProfit / a.Revenue, 4) AS Net_Profit_Margin,
  ROUND(1.0 * a.NetProfit / b.Total_Assets, 4) AS ROA,
  ROUND(1.0 * a.NetProfit / b.Total_Equity, 4) AS ROE
FROM income_statement a
JOIN balance_sheet b ON a.Year = b.Year AND a.Company = b.Company
ORDER BY a.Company, a.Year;

-- Cash Flow Analysis

SELECT 
  Year,
  Company,
  Net_Cash_Flow_Operating,
  Net_Cash_Flow_Investing,
  Net_Cash_Flow_Financing,
  Net_Cash_Flow_Operating + Net_Cash_Flow_Investing + Net_Cash_Flow_Financing AS Net_Total_Cash_Flow
FROM cash_flow
ORDER BY Year, Company;

--Revenue and Profit YoY Growth

WITH RevenueGrowth AS (
  SELECT 
    Company,
    Year,
    Revenue,
    NetProfit,
    LAG(Revenue) OVER (PARTITION BY Company ORDER BY Year) AS Prev_Revenue,
    LAG(NetProfit) OVER (PARTITION BY Company ORDER BY Year) AS Prev_Profit
  FROM income_statement
)
SELECT 
  Company,
  Year,
  Revenue,
  Prev_Revenue,
  ROUND(1.0 * (Revenue - Prev_Revenue) / NULLIF(Prev_Revenue, 0), 4) AS Revenue_Growth,
  NetProfit,
  Prev_Profit,
  ROUND(1.0 * (NetProfit - Prev_Profit) / NULLIF(Prev_Profit, 0), 4) AS Profit_Growth
FROM RevenueGrowth
WHERE Prev_Revenue IS NOT NULL;

-- Top & Bottom Year by ROA

WITH Ratios AS (
  SELECT 
    a.Company,
    a.Year,
    ROUND(1.0 * a.NetProfit / a.Revenue, 4) AS NetProfitMargin,
    ROUND(1.0 * a.NetProfit / b.Total_Assets, 4) AS ROA,
    ROUND(1.0 * a.NetProfit / b.Total_Equity, 4) AS ROE,
    ROUND(1.0 * b.Total_Liabilities / b.Total_Equity, 2) AS DebtToEquity
  FROM income_statement a
  JOIN balance_sheet b ON a.Company = b.Company AND a.Year = b.Year
)
SELECT *,
  CASE 
    WHEN NetProfitMargin >= 0.1 AND ROA >= 0.05 AND DebtToEquity < 1 THEN 'Healthy'
    ELSE 'Watchlist'
  END AS Status
FROM Ratios;

-- Company Financial Health

WITH RatioCalc AS (
  SELECT 
    a.Company,
    a.Year,
    a.NetProfit,
    b.Total_Assets,
    ROUND(1.0 * a.NetProfit / b.Total_Assets, 4) AS ROA
  FROM income_statement a
  JOIN balance_sheet b ON a.Company = b.Company AND a.Year = b.Year
),
RankedROA AS (
  SELECT *,
    RANK() OVER (PARTITION BY Company ORDER BY ROA DESC) AS Rank_Highest,
    RANK() OVER (PARTITION BY Company ORDER BY ROA ASC) AS Rank_Lowest
  FROM RatioCalc
)
SELECT Company, Year, ROA, 
       CASE WHEN Rank_Highest = 1 THEN 'Best Year' 
            WHEN Rank_Lowest = 1 THEN 'Worst Year'
       END AS PerformanceFlag
FROM RankedROA
WHERE Rank_Highest = 1 OR Rank_Lowest = 1;
