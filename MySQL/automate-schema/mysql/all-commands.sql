# ADD Column
ALTER TABLE table_name
ADD column_name datatype

ex:
ALTER TABLE post
ADD COLUMN goal VARCHAR(5);

# RENAME COLUMN NAME
ALTER TABLE post CHANGE goal purpose varchar(10) ;
