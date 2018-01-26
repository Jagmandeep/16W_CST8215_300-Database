Question 1
select * FROM survey_responders;

Question 2
select * FROM survey_responders;

Question 3
select * FROM survey_questions;

Question 4
select question  FROM survey_questions;

Question 5
select * FROM survey_responders
WHERE province LIKE 'Alberta';

Question 6
select * from survey_responses
WHERE survey_question_id = 4 ;

Question 7
select AVG(survey_response) from survey_responses;

Question 8
select AVG(survey_response) from survey_responses
WHERE survey_question_id = 1 ;

select AVG(survey_response) from survey_responses
WHERE survey_question_id = 2 ;

select AVG(survey_response) from survey_responses
WHERE survey_question_id = 3 ;

select AVG(survey_response) from survey_responses
WHERE survey_question_id = 4;

select AVG(survey_response) from survey_responses
WHERE survey_question_id = 5 ;

select AVG(survey_response) from survey_responses
WHERE survey_question_id = 6 ;

Question 9
select * from survey_responses
join survey_responders on survey_responders.id=survey_responses.survey_responder_id
WHERE survey_question_id = 1 ;


Question 10
select  AVG(survey_response)from survey_responses
join survey_responders on survey_responders.id=survey_responses.survey_responder_id
WHERE province = 'Ontario';

Question 11
select  AVG(survey_response),survey_question_id from survey_responses
join survey_responders on survey_responders.id=survey_responses.survey_responder_id
WHERE province = 'Ontario' group by survey_question_id;

Question 12
select province,question,AVG(survey_response) 
from survey_responses
join survey_responders on survey_responders.id=survey_responses.survey_responder_id
join survey_questions on survey_questions.id = survey_responses.survey_question_id
group by province,question
order by province,question;
