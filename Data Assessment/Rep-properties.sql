SELECT rep.emp_id AS ‘Rep ID’, rep.first_name AS ‘Rep Name’, rep.surname AS ‘Surname’, sup.first_name AS ‘Sup Name’, sup.surname AS ‘Surname’, p.property_id AS ‘Property ID’, pt.type_name AS ‘Property Type’, p.location_id AS ‘Location ID’, p.client_id AS ‘Client ID’, p.date_on_market AS ‘Date on Market’, p.date_sold AS ‘Date Sold’, p.asking_price AS ‘Asking Price’
FROM
(
         SELECT e.first_name, e.surname, e.emp_id, sr.super_id
         FROM sales_reps sr
         LEFT JOIN employees e
         ON sr.emp_id = e.emp_id)
AS rep
LEFT JOIN properties p
ON rep.emp_id = p.emp_id
LEFT JOIN property_types pt
ON p.property_type = pt.type_id
LEFT JOIN (
         SELECT e.first_name, e.surname, s.sup_id
         FROM supervisors s
         LEFT JOIN employees e
         ON s.emp_id = e.emp_id)
AS sup
ON rep.super_id = sup.sup_id;