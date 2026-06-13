1.Which batsmen scored the most runs in the 2018 season while maintaining an average strike rate of at least 130?
select player,Team,Runs,S_R
from `nabanita9836.ipl_analysis9836.2018_Batsmen_new`
where S_R>= 130
order by Runs DESC;

2.Which batsmen scored the most runs across both 2018 and 2019 seasons?
SELECT Player,SUM(Runs) AS Total_Runs
FROM (
SELECT Player, Runs
FROM `nabanita9836.ipl_analysis9836.2018_Batsmen_new`
UNION ALL
SELECT Player, Runs
FROM `nabanita9836.ipl_analysis9836.2019_batsmen`)
GROUP BY Player
ORDER BY Total_Runs DESC;

3.Which batsmen has hit the maximum number of boundaries in 2018, combining 4s and 6s?
SELECT Player,Team ,(`4s` + `6s`) AS Total_Boundaries
FROM `nabanita9836.ipl_analysis9836.2018_Batsmen_new`
ORDER BY Total_Boundaries DESC;

4.Name the Batsmen who has hit maximum half centuries, both the years combined
SELECT Player,SUM(`50s`) AS Total_Half_Centuries
FROM (
SELECT Player, `50s`
FROM `nabanita9836.ipl_analysis9836.2018_Batsmen_new`
UNION ALL
SELECT Player, `50s`
FROM `nabanita9836.ipl_analysis9836.2018_Batsmen_new`)
GROUP BY Player
ORDER BY Total_Half_Centuries DESC;
