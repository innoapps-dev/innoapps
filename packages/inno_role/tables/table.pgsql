CREATE TABLE inno_role (
  "id" text,
  "title" text NOT NULL,
);

ALTER TABLE ONLY inno_role
  ADD CONSTRAINT inno_role_pkey PRIMARY KEY (id);

