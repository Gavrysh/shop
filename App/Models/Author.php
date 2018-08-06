<?php

namespace App\Models;

use Core\Model;

class Author extends Model
{
    public $queryString = 'SELECT b.id, b.name, b.content, a.id, a.first_name, a.last_name, a.biography, a.img FROM books as b, books_authors as ba, authors as a WHERE ba.books_id = b.id AND ba.authors_id = a.id AND a.id = ';
}