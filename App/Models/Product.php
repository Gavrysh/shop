<?php

namespace App\Models;

use Core\Model;

class Product extends Model
{
    public $queryString = 'SELECT b.id, b.name, b.description, b.pages, b.publication, b.price, a.id, a.first_name, a.last_name, a.bio FROM books as b, books_authors as ba, authors as a WHERE ba.books_id = b.id AND ba.authors_id = a.id AND b.id = ';
}