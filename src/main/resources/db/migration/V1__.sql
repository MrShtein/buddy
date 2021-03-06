CREATE TABLE animal
(
    animal_id       BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    animal_type_id  INTEGER,
    name            VARCHAR(255),
    gender_id       INTEGER,
    approximate_age INTEGER,
    kennel_id       INTEGER,
    created_at      TIMESTAMP WITHOUT TIME ZONE,
    updated_at      TIMESTAMP WITHOUT TIME ZONE,
    status          VARCHAR(255),
    description     VARCHAR(255),
    breed_id        INTEGER,
    person_id       BIGINT,
    CONSTRAINT pk_animal PRIMARY KEY (animal_id)
);

CREATE TABLE animal_characteristic
(
    animal_id         BIGINT  NOT NULL,
    characteristic_id INTEGER NOT NULL
);

CREATE TABLE animal_photo
(
    animal_photo_id    INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    url                VARCHAR(100)                             NOT NULL,
    is_primary         BOOLEAN                                  NOT NULL,
    animal_id          BIGINT,
    status             VARCHAR(20),
    status_change_date TIMESTAMP WITHOUT TIME ZONE,
    CONSTRAINT pk_animal_photo PRIMARY KEY (animal_photo_id)
);

CREATE TABLE animal_type
(
    animal_type_id INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    name           VARCHAR(255),
    plural_name    VARCHAR(255),
    CONSTRAINT pk_animal_type PRIMARY KEY (animal_type_id)
);

CREATE TABLE breed
(
    breed_id       INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    name           VARCHAR(255)                             NOT NULL,
    animal_type_id INTEGER                                  NOT NULL,
    CONSTRAINT pk_breed PRIMARY KEY (breed_id)
);

CREATE TABLE characteristic
(
    characteristic_id      INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    characteristic_type_id INTEGER                                  NOT NULL,
    value                  VARCHAR(20)                              NOT NULL,
    CONSTRAINT pk_characteristic PRIMARY KEY (characteristic_id)
);

CREATE TABLE characteristic_type
(
    characteristic_type_id INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    name                   VARCHAR(20),
    CONSTRAINT pk_characteristic_type PRIMARY KEY (characteristic_type_id)
);

CREATE TABLE city
(
    city_id   BIGINT NOT NULL,
    name      VARCHAR(50),
    region    VARCHAR(50),
    latitude  VARCHAR(20),
    longitude VARCHAR(20),
    CONSTRAINT pk_city PRIMARY KEY (city_id)
);

CREATE TABLE gender
(
    gender_id   INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    gender_type VARCHAR(255),
    CONSTRAINT pk_gender PRIMARY KEY (gender_id)
);

CREATE TABLE kennel
(
    kennel_id        INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    name             VARCHAR(255),
    location         INTEGER                                  NOT NULL,
    street           VARCHAR(255)                             NOT NULL,
    house            VARCHAR(10)                              NOT NULL,
    phone_number     VARCHAR(20)                              NOT NULL,
    email            VARCHAR(50)                              NOT NULL,
    building         VARCHAR(15),
    avatar_uri       VARCHAR(50),
    identify_num     BIGINT,
    is_valid         BOOLEAN                                  NOT NULL,
    administrator_id BIGINT                                   NOT NULL,
    CONSTRAINT pk_kennel PRIMARY KEY (kennel_id)
);

CREATE TABLE person
(
    person_id    BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    email        VARCHAR(255),
    name         VARCHAR(255),
    surname      VARCHAR(255),
    password     VARCHAR(255),
    phone_number VARCHAR(255),
    role_id      BIGINT,
    locked       BOOLEAN,
    enabled      BOOLEAN,
    gender       VARCHAR(255),
    address      BIGINT,
    CONSTRAINT pk_person PRIMARY KEY (person_id)
);

CREATE TABLE role
(
    role_id   BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    role_name VARCHAR(255),
    CONSTRAINT pk_role PRIMARY KEY (role_id)
);

CREATE TABLE volunteer
(
    kennel_id INTEGER NOT NULL,
    person_id BIGINT  NOT NULL
);

CREATE UNIQUE INDEX animal_photo_url_uindex ON animal_photo (url);

ALTER TABLE animal
    ADD CONSTRAINT FK_ANIMAL_ON_ANIMAL_TYPE FOREIGN KEY (animal_type_id) REFERENCES animal_type (animal_type_id);

ALTER TABLE animal
    ADD CONSTRAINT FK_ANIMAL_ON_BREED FOREIGN KEY (breed_id) REFERENCES breed (breed_id);

ALTER TABLE animal
    ADD CONSTRAINT FK_ANIMAL_ON_GENDER FOREIGN KEY (gender_id) REFERENCES gender (gender_id);

ALTER TABLE animal
    ADD CONSTRAINT FK_ANIMAL_ON_KENNEL FOREIGN KEY (kennel_id) REFERENCES kennel (kennel_id);

ALTER TABLE animal
    ADD CONSTRAINT FK_ANIMAL_ON_PERSON FOREIGN KEY (person_id) REFERENCES person (person_id);

ALTER TABLE animal_photo
    ADD CONSTRAINT FK_ANIMAL_PHOTO_ON_ANIMAL FOREIGN KEY (animal_id) REFERENCES animal (animal_id);

ALTER TABLE breed
    ADD CONSTRAINT FK_BREED_ON_ANIMAL_TYPE FOREIGN KEY (animal_type_id) REFERENCES animal_type (animal_type_id);

ALTER TABLE characteristic
    ADD CONSTRAINT FK_CHARACTERISTIC_ON_CHARACTERISTIC_TYPE FOREIGN KEY (characteristic_type_id) REFERENCES characteristic_type (characteristic_type_id);

ALTER TABLE person
    ADD CONSTRAINT FK_PERSON_ON_ADDRESS FOREIGN KEY (address) REFERENCES city (city_id);

ALTER TABLE person
    ADD CONSTRAINT FK_PERSON_ON_ROLE FOREIGN KEY (role_id) REFERENCES role (role_id);

ALTER TABLE animal_characteristic
    ADD CONSTRAINT fk_anicha_on_animal FOREIGN KEY (animal_id) REFERENCES animal (animal_id);

ALTER TABLE animal_characteristic
    ADD CONSTRAINT fk_anicha_on_characteristic FOREIGN KEY (characteristic_id) REFERENCES characteristic (characteristic_id);

ALTER TABLE volunteer
    ADD CONSTRAINT fk_volunteer_on_kennel FOREIGN KEY (kennel_id) REFERENCES kennel (kennel_id);

ALTER TABLE volunteer
    ADD CONSTRAINT fk_volunteer_on_person FOREIGN KEY (person_id) REFERENCES person (person_id);