SELECT Player,Wkts FROM `nabanita9836.ipl_analysis9836.2018_bowlers` LIMIT 5
*/
1. Which bowler took the most wickets in the 2018 season?
select Player,Wkts
from `nabanita9836.ipl_analysis9836.2018_bowlers`
order by Wkts desc
 limit 1;
*/
2.Which bowlers took the most wickets in the 2018 season while maintaining an economy rate of less than 7 runs per over?
select Player,Wkts,E_R
from `nabanita9836.ipl_analysis9836.2018_bowlers`
where E_R<7
order by Wkts desc;
*/
3.Name the bowlers who have got 4 wickets haul in 2019.
select player,Wkts
from `nabanita9836.ipl_analysis9836.2019_Bowlers_new`
where `4w` > 0;
*/
4.Name 5 such bowlers who bowled the least number of overs in 2018.
select player,overs
from `nabanita9836.ipl_analysis9836.2018_bowlers`
order by Overs asc
limit 5;
*/