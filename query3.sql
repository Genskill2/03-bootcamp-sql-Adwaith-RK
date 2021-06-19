select B.title from books B, books_subjects BS where B.id=BS.book and BS.subject in(3,8);
