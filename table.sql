

CREATE TABLE records (
    id INT NOT NULL AUTO_INCREMENT,
    active TINYINT(1) NOT NULL DEFAULT 0,
    address VARCHAR(30) NOT NULL,
    mac VARCHAR(30) NOT NULL,
    hostname VARCHAR(50),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW(),
    created_at TIMESTAMP NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT uc_address_name_mac UNIQUE (address,hostname,mac)
);

CREATE TABLE logging (
    id         INT NOT NULL AUTO_INCREMENT,
    action     VARCHAR(30) NOT NULL,
    address    VARCHAR(30) NOT NULL,
    mac        VARCHAR(30) NOT NULL,
    hostname   VARCHAR(50),
    date TIMESTAMP NOT NULL,
    PRIMARY KEY(id)
);
