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
	subject INTEGER,
	FOREIGN KEY(book) REFERENCES books(id),
	FOREIGN KEY(subject) REFERENCES subjects(id)
);
