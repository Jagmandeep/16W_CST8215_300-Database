


1
   alter table survey_responders add column last_modified timestamp ;
   

2

   alter table survey_questions add column last_modified timestamp ;

3

   CREATE VIEW survey_responses AS
 SELECT * FROM survey_responses 
JOIN survey_questions ON survey_questions.id=survey_responses.survey_question_id ;


4

  alter table survey_responders add column call_username varchar(50) NOTNULL ;

5

 alter table survey_responders add column call_password varchar(50) ;  

 
6

update survey_responders set (call_username) =
trim ((substring(first_name from 1 for position('' in first_name))) || trim(last_name)


7

create or replace function random_string(length integer) returns text as 
$$
declare
  chars text[] := '{0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z}';
  result text := '';
  i integer := 0;
begin
  if length < 0 then
    raise exception 'Given length cannot be less than 0';
  end if;
  for i in 1..length loop
    result := result || chars[1+random()*(array_length(chars, 1)-1)];
  end loop;
  return result;
end;
$$ language plpgsql;


8

UPDATE "survey_responders" SET call_password  =  random_string();


9


CREATE OR REPLACE FUNCTION fn_up_change()
  RETURNS trigger AS
$$
BEGIN

 
 NEW.last_modified := current_timestamp;
 
 RETURN NEW;


END;
$$
  LANGUAGE plpgsql;
  
CREATE TRIGGER trg_password_change
BEFORE UPDATE
ON survey_responders
FOR EACH ROW
EXECUTE PROCEDURE fn_up_change();
 	 	
 10

CREATE OR REPLACE FUNCTION fn_q_change()
  RETURNS trigger AS
$$
BEGIN

 
 NEW.last_modified := current_timestamp;
 
 RETURN NEW;


END;
$$
  LANGUAGE plpgsql;
  
CREATE TRIGGER trg_password_change
BEFORE UPDATE
ON survey_questions
FOR EACH ROW
EXECUTE PROCEDURE fn_q_change();


11

CREATE OR REPLACE FUNCTION fn_del_record()
  RETURNS trigger AS
$$
BEGIN

 DELETE from survey_responses 
 WHERE survey_responder_id= OLD.id;

 
 RETURN OLD;


END;
$$
  LANGUAGE plpgsql;
  
CREATE TRIGGER trg_del_record
AFTER DELETE
ON survey_responses
FOR EACH ROW
EXECUTE PROCEDURE fn_del_record();

 	 	