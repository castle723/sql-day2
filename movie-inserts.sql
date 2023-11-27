insert into customers(
	customer_id,
	first_name,
	last_name,
	email,
	phone,
	address
) values (
	1,
	'Jacob',
	'Castle',
	'jacob@qgmnow.com',
	'346-813-8057',
	'1111 home way'
);

insert into "Concessions" (
	concession_id,
	customer_id,
	item_name,
	item_price
) values (
	1,
	1,
	'candy',
	'4.99'
);

insert into movie (
	movie_id,
	title,
	genre,
	release_date,
	film_length
) values (
	1,
	'my life',
	'drama',
	'07/23/2001',
	'1hr 45m'
);

insert into "Ticket"  (
	ticket_id,
	customer_id,
	movie_id,
	seat_number,
	ticket_price,
	purchase_date
) values (
	1,
	1,
	1,
	'G5',
	'10.99',
	'11/27/2023'
);
