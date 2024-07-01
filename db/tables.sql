CREATE TABLE fees (
    id SERIAL PRIMARY KEY,
    fee NUMERIC NOT NULL,
    due_date DATE NOT NULL,
    payment_status VARCHAR(50) NOT NULL,
    comment VARCHAR(255),
    late_payment BOOLEAN DEFAULT FALSE,
    discount NUMERIC DEFAULT 0,
    subtotal NUMERIC NOT NULL,
    student_id INTEGER NOT NULL,
    school_id INTEGER NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (school_id) REFERENCES schools(id)
);


CREATE TABLE other_payments (
    id SERIAL PRIMARY KEY,
    payment_method VARCHAR(50) NOT NULL,
    comment VARCHAR(255),
    amount_paid NUMERIC NOT NULL,
    concept VARCHAR(100) NOT NULL,
    registration_date DATE NOT NULL,
    payment_id INTEGER NOT NULL,
    school_id INTEGER NOT NULL,
    tutor_id INTEGER NOT NULL,
    FOREIGN KEY (payment_id) REFERENCES payments(id),
    FOREIGN KEY (school_id) REFERENCES schools(id),
    FOREIGN KEY (tutor_id) REFERENCES tutors(id)
);

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    document VARCHAR(50) NOT NULL,
    grade VARCHAR(20) NOT NULL,
    monthly_fee NUMERIC NOT NULL,
    year INTEGER NOT NULL,
    email VARCHAR(100),
    tutor_id INTEGER NOT NULL,
    school_id INTEGER NOT NULL,
    FOREIGN KEY (tutor_id) REFERENCES tutors(id),
    FOREIGN KEY (school_id) REFERENCES schools(id)
);

CREATE TABLE combined_payments (
    id SERIAL PRIMARY KEY,
    concept VARCHAR(100) NOT NULL,
    payment_date DATE NOT NULL,
    payment_method VARCHAR(50) NOT NULL,
    amount_paid NUMERIC NOT NULL,
    school_id INTEGER NOT NULL,
    FOREIGN KEY (school_id) REFERENCES schools(id)
);


CREATE TABLE settlements (
    id SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    reference VARCHAR(100) NOT NULL,
    amount NUMERIC NOT NULL,
    commission NUMERIC NOT NULL,
    itbms NUMERIC NOT NULL,
    title_ach VARCHAR(100),
    school_id INTEGER NOT NULL,
    FOREIGN KEY (school_id) REFERENCES schools(id)
);

CREATE TABLE tutors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    document VARCHAR(50) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    telefono2 VARCHAR(20)
);

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    document VARCHAR(50) NOT NULL,
    grade VARCHAR(20) NOT NULL,
    monthly_fee NUMERIC NOT NULL,
    year INTEGER NOT NULL,
    email VARCHAR(100),
    tutor_id INTEGER NOT NULL,
    school_id INTEGER NOT NULL,
    FOREIGN KEY (tutor_id) REFERENCES tutors(id),
    FOREIGN KEY (school_id) REFERENCES schools(id)
);

CREATE TABLE schools (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);