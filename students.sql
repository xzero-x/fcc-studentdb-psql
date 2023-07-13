--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (41, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (42, 'Web Programming');
INSERT INTO public.courses VALUES (43, 'Database Systems');
INSERT INTO public.courses VALUES (44, 'Computer Networks');
INSERT INTO public.courses VALUES (45, 'SQL');
INSERT INTO public.courses VALUES (46, 'Machine Learning');
INSERT INTO public.courses VALUES (47, 'Computer Systems');
INSERT INTO public.courses VALUES (48, 'Web Applications');
INSERT INTO public.courses VALUES (49, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (50, 'Python');
INSERT INTO public.courses VALUES (51, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (52, 'Calculus');
INSERT INTO public.courses VALUES (53, 'Game Architecture');
INSERT INTO public.courses VALUES (54, 'Algorithms');
INSERT INTO public.courses VALUES (55, 'UNIX');
INSERT INTO public.courses VALUES (56, 'Server Administration');
INSERT INTO public.courses VALUES (57, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (54, 'Database Administration');
INSERT INTO public.majors VALUES (55, 'Web Development');
INSERT INTO public.majors VALUES (56, 'Data Science');
INSERT INTO public.majors VALUES (57, 'Network Engineering');
INSERT INTO public.majors VALUES (58, 'Computer Programming');
INSERT INTO public.majors VALUES (59, 'Game Design');
INSERT INTO public.majors VALUES (60, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (54, 41);
INSERT INTO public.majors_courses VALUES (55, 42);
INSERT INTO public.majors_courses VALUES (54, 43);
INSERT INTO public.majors_courses VALUES (56, 41);
INSERT INTO public.majors_courses VALUES (57, 44);
INSERT INTO public.majors_courses VALUES (54, 45);
INSERT INTO public.majors_courses VALUES (56, 46);
INSERT INTO public.majors_courses VALUES (57, 47);
INSERT INTO public.majors_courses VALUES (58, 44);
INSERT INTO public.majors_courses VALUES (54, 48);
INSERT INTO public.majors_courses VALUES (59, 49);
INSERT INTO public.majors_courses VALUES (56, 50);
INSERT INTO public.majors_courses VALUES (58, 51);
INSERT INTO public.majors_courses VALUES (60, 47);
INSERT INTO public.majors_courses VALUES (59, 52);
INSERT INTO public.majors_courses VALUES (55, 41);
INSERT INTO public.majors_courses VALUES (56, 52);
INSERT INTO public.majors_courses VALUES (55, 51);
INSERT INTO public.majors_courses VALUES (59, 53);
INSERT INTO public.majors_courses VALUES (60, 44);
INSERT INTO public.majors_courses VALUES (59, 54);
INSERT INTO public.majors_courses VALUES (60, 55);
INSERT INTO public.majors_courses VALUES (60, 56);
INSERT INTO public.majors_courses VALUES (58, 47);
INSERT INTO public.majors_courses VALUES (58, 50);
INSERT INTO public.majors_courses VALUES (57, 57);
INSERT INTO public.majors_courses VALUES (55, 48);
INSERT INTO public.majors_courses VALUES (57, 54);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (12, 'Rhea', 'Kellems', 54, 2.5);
INSERT INTO public.students VALUES (13, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (14, 'Kimberly', 'Whitley', 55, 3.8);
INSERT INTO public.students VALUES (15, 'Jimmy', 'Felipe', 54, 3.7);
INSERT INTO public.students VALUES (16, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (17, 'Casares', 'Hijo', 59, 4.0);
INSERT INTO public.students VALUES (18, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (19, 'Sterling', 'Boss', 59, 3.9);
INSERT INTO public.students VALUES (20, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (21, 'Kaija', 'Uronen', 59, 3.7);
INSERT INTO public.students VALUES (22, 'Faye', 'Conn', 59, 2.1);
INSERT INTO public.students VALUES (23, 'Efren', 'Reilly', 55, 3.9);
INSERT INTO public.students VALUES (24, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (25, 'Maxine', 'Hagenes', 54, 2.9);
INSERT INTO public.students VALUES (26, 'Larry', 'Saunders', 56, 2.2);
INSERT INTO public.students VALUES (27, 'Karl', 'Kuhar', 55, NULL);
INSERT INTO public.students VALUES (28, 'Lieke', 'Hazenveld', 59, 3.5);
INSERT INTO public.students VALUES (29, 'Obie', 'Hilpert', 55, NULL);
INSERT INTO public.students VALUES (30, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (31, 'Nathan', 'Turner', 54, 3.3);
INSERT INTO public.students VALUES (32, 'Gerald', 'Osiki', 56, 2.2);
INSERT INTO public.students VALUES (33, 'Vanya', 'Hassanah', 59, 4.0);
INSERT INTO public.students VALUES (34, 'Roxelana', 'Florescu', 54, 3.2);
INSERT INTO public.students VALUES (35, 'Helene', 'Parker', 56, 3.4);
INSERT INTO public.students VALUES (36, 'Mariana', 'Russel', 55, 1.8);
INSERT INTO public.students VALUES (37, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (38, 'Mehdi', 'Vandenberghe', 54, 1.9);
INSERT INTO public.students VALUES (39, 'Dejon', 'Howell', 55, 4.0);
INSERT INTO public.students VALUES (40, 'Aliya', 'Gulgowski', 60, 2.6);
INSERT INTO public.students VALUES (41, 'Ana', 'Tupajic', 56, 3.1);
INSERT INTO public.students VALUES (42, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 57, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 60, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 42, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--
