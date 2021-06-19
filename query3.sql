SELECT B.title FROM books B, books_subjects BS WHERE B.id=BS.book AND BS.subject IN(3,8);
