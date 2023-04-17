CREATE TABLE inno_user (
  "uid" text,
  "first_name" text NOT NULL,
  "last_name" text NOT NULL
);

ALTER TABLE ONLY inno_user
  ADD CONSTRAINT inno_user_pkey PRIMARY KEY (uid);

