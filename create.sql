create table publisher 
(
	id integer primary key autoincrement,
	name text,
	country text
);

create table books
(
	id integer primary key autoincrement,
	title text,
	publisher integer,
	foreign key(publisher) references publisher(id)
);

create table subjects
(
	id integer primary key autoincrement,
	name text
);

create table books_subjects
(
	foreign key(books) references books(id),
	foreign key(subjects) references subjects(id)
);
