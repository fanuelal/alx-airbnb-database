- For the first normalization(1NF) it has all values has single value in attributes
- for the second normalization(2NF) all non-prim attributes are dependent on primary key
- There must be no transitive dependencies, where non-prime attributes depend on other non-prime attributes rather than directly on the primary key.

- but we can make the booking.total_price attribute can be drived data instead of creating attribute
  we can calculate it by making property.pricepernight \* (booking.end_date - booking.start_date)
  and also for the scalability side we can make the role can be on different table with id, role title, description.
