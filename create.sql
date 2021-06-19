CREATE TABLE publisher (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT,
	country TEXT
);

CREATE TABLE books(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	title TEXT,
	publisher INTEGER,
	FOREIGN KEY(publisher) REFERENCES publisher(id)
);

CREATE TABLE subjects(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT
);

CREATE TABLE books_subjects (
	book INTEGER,
	subjects INTEGER,
	FOREIGN KEY(books) REFERENCES books(id),
	FOREIGN KEY(subjects) REFERENCES subjects(id)
);
