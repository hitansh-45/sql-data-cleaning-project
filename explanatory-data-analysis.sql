-- Explanatory data anlaysis 

SELECT *
FROM layoffs_staging2;



SELECT MAX(total_laid_off) , MAX(percentage_laid_off)
FROM layoffs_staging2;

SELECT *
FROM layoffs_staging2
where percentage_laid_off=1
ORDER BY  funds_raised_millions DESC;

SELECT company,SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company
ORDER BY 2 DESC;


SELECT MIN(`date`) , MAX(`date`)
FROM layoffs_staging2;


SELECT country, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY country
ORDER BY 2 DESC;

SELECT stage, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY stage
ORDER BY 2 DESC;



SELECT *
FROM layoffs_staging2;


SELECT substring(`date`,1,7) AS `MONTH` , SUM(total_laid_off)
FROM layoffs_staging2
WHERE substring(`date`,1,7) IS NOT NULL
GROUP BY substring(`date`,1,7)
ORDER BY 1 ASC
;

WITH Rolling_total AS
(
SELECT substring(`date`,1,7) AS `MONTH` , SUM(total_laid_off) AS total_off
FROM layoffs_staging2
WHERE substring(`date`,1,7) IS NOT NULL
GROUP BY substring(`date`,1,7)
ORDER BY 1 ASC 
)
SELECT `MONTH`,total_off,
SUM(total_off) OVER(ORDER BY `MONTH`) AS rolling_total
FROM Rolling_total;


SELECT company, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company
ORDER BY 2 DESC;

SELECT *
FROM layoffs_staging2
WHERE company LIKE 'Google';

SELECT company, YEAR(`date`),SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company,YEAR(`date`)
ORder by 3 desc ;




WITH company_year(company,years,total_laid_off)  AS 
(
SELECT company, YEAR(`date`) AS year   ,SUM(total_laid_off) AS company_off
FROM layoffs_staging2
GROUP BY company,YEAR(`date`)
),
company_year1  AS 
(
SELECT * ,
DENSE_RANK() OVER (partition by years order by total_laid_off DESC) as ranking
from company_year
where years is not NULL
)
SELECT *
From company_year1
where ranking <=5
;

