Fees
id (number)
fee (number)
due_date (date)
payment_status (string)
comment (string)
late_payment (boolean)
discount (number)
subtotal (number)
student_id (number)
school_id (number)

other_payments
id (number)
payment_method (string)
comment (string)
amount_paid (number)
concept (string)
registration_date (date)
payment_id (number)
school_id (number)
tutor_id (number)

tutors
id (number)
name (string)
document (string)
telefono (string)
telefono2 (string)

students
id (number)
name (string)
document (string)
grade (string)
monthly_fee (number)
year (number)
email (string)
tutor_id (number)
school_id (number)

payments
id (number)
payment_date (date)
payment_method (string)
amount_paid (number)
concept (string)
comment (string)
applied (boolean)
registration_date (date)
student_id (number)
school_id (number)

combined_payments
id (number)
concept (string)
payment_date (date)
payment_method (string)
amount_paid (number)
school_id (number)

settlements
id (number)
date (date)
reference (string)
amount (number)
commision (number)
itbms (number)
title_ach (string)
school_id (number)

schools
id (number)
name (string)
