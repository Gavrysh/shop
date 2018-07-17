<?php
class Model_product extends Model
{
    public function get_id($id)
    {
        $res = q("
          SELECT b.id, b.name, b.description, b.pages, b.publication, b.price, a.id, a.first_name, a.last_name, a.bio
          FROM books as b, books_authors as ba, authors as a
          WHERE ba.books_id = b.id AND ba.authors_id = a.id AND b.id = ".(int)$id."
        ");

        while ($row = mysqli_fetch_assoc($res)) {
            $output[] = $row;
        }

        return $output;
    }
}