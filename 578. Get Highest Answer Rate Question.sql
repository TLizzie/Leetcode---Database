select question_id as survey_log from (
select question_id, sum(if(action='answer',1,0))/count(*) as answer_rate
from survey_log 
group by question_id
order by answer_rate DESC
limit 1) a
