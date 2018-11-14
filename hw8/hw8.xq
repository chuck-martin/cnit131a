for $x in doc("hw8.xml")/bookstore/book
where $x/price<30
order by $x/title
return $x/title
