select * from Patients
where ucase(conditions) like '% DIAB1%' or ucase(conditions) like 'DIAB1%';
