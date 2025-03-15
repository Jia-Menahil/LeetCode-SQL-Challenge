select R.contest_id, round((count(R.user_id) / (select count(*) from Users)) * 100, 2) as percentage 
from Register R
join Users U on R.user_id = U.user_id
group by R.contest_id
order by percentage desc, R.contest_id;
