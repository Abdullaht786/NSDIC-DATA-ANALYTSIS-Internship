select  * from hr_data

--headcount for each job role--
Select count(job_title) as headcount,job_title from hr_data
group by job_title
order by headcount desc;

-- gender distribution among staff--
Select count(gender) as distribution,gender from hr_data
group by gender
order by distribution desc;

--Assess salary discrepancies across various position--
select job_title,sum(salary) as sal from hr_data
group by job_title
order by sal desc;


--Identify the highest earners in each role--
select distinct job_title,max(salary) as sal from hr_data
group by job_title
order by sal desc;

---Examine the relationship between qualifications and salaries.--

Select education_qualification,Round(avg(salary),0) as sal from hr_data
group by education_qualification
order by sal desc;

--Conduct an analysis of leave balances--

select name,sum(leave_balance) as leave from hr_data
group by name
order by leave desc;

