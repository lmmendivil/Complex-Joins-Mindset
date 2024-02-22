# Complex-Joins-Mindset
An explanation to clearly understand what's behind complex joins of SQL. 


Consider the following example (figure 1). This is a new table, formed by a CROSS JOIN of two different tables, which makes this a whole new table, we’ll call it the third table. 

Now look at this other table called “examinations” (figure 2). If I join the “examinations” table to the “third table” using only the student_id column, MySQL will look for the student_id in the “examinations” table and match it to the same student_id on the “third table”.  All good right?

For example, take the student_id with value “1”. How many rows with the student_id of “1” are in the “third table”? The answer is three. Now, onto examinations table. Even if there were only one row with the student_id “1”, MySQL would’ve taken that one row and put it next to each of the three rows of the “third table”. Nevertheless, the “examinations” table has six rows with the student_id “1”, imagine the mess of the combinations on that join. 

You’ll use different joins, depending on whatever you’re trying to accomplish. For this example, I want to join the “third table” to the “examinations” using a “composite field”.  We need to make a unique match by pairing two or more columns together and using this complex pair of columns as the joining column. In this example, we would match student_id and subject_name in each table. 

With this approach MySQL will look for the field with the same value of student_id and subject_name in both tables and match them together. For example, MySQL will look for student_id “1” and subject_name “math” and if you look at figure 1, there’s only one row in that table with such composite field, whereas figure 2 shows three rows with the same composite field. MySQL will match those three rows to the figure 1’s and it will look like figure 3’s image.

That’s essentially the thinking behind these complex joins; however, summing the use-case up, the examinations table refers to the events a given student attempted one given-subject exam. In this case, I wanted to know how many attempts each student had on each subject. (Figure 4)
