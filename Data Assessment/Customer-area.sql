SELECT c.client_id AS ‘Client ID’, c.first_name AS ‘First Name’, c.surname as ‘Surname’, a.area_name AS ‘Area’, pl.country AS ‘Country’, e.first_name AS ‘Area Manager First Name’, e.surname AS ‘Area Manager Surname’
FROM	 clients c
JOIN properties p
ON c.client_id = p.client_id
LEFT JOIN property_locatiONs pl
ON p.locatiON_id = pl.locatiON_id
LEFT JOIN areas a
ON pl.area_id = a.area_id
LEFT JOIN emp_areas ea
ON a.area_id = ea.area_id
LEFT JOIN employees e
ON ea.emp_id = e.emp_id
WHERE e.emp_id in (SELECT emp_id from chiefs)
ORDER BY c.client_id;