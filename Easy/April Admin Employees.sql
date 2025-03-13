-- Find the number of employees working in the Admin department that joined in April or later.
-- https://platform.stratascratch.com/coding/9845-find-the-number-of-employees-working-in-the-admin-department?code_type=1

select count(worker_id) as n_admins from worker
where joining_date >= '2014-04-01' and department = 'Admin';
