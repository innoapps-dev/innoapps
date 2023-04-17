CREATE TABLE inno_link (
  "id" text,
  "url" text NOT NULL,
  "link" text NOT NULL
);

ALTER TABLE ONLY inno_link
  ADD CONSTRAINT inno_link_pkey PRIMARY KEY (id);

