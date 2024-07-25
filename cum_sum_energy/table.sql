CREATE TABLE fb_eu_energy (
    date DATE,
    consumption INT
);
INSERT INTO fb_eu_energy (date, consumption) VALUES
('2020-01-01', 400),
('2020-01-02', 350),
('2020-01-03', 500),
('2020-01-04', 500),
('2020-01-07', 600);


CREATE TABLE fb_na_energy (
    date DATE,
    consumption INT
);


INSERT INTO fb_na_energy (date, consumption) VALUES
('2020-01-01', 250),
('2020-01-02', 375),
('2020-01-03', 600),
('2020-01-06', 500),
('2020-01-07', 250);



CREATE TABLE fb_asia_energy (
    date DATE,
    consumption INT
);

INSERT INTO fb_asia_energy (date, consumption) VALUES
('2020-01-01', 400),
('2020-01-02', 400),
('2020-01-04', 675),
('2020-01-05', 1200),
('2020-01-06', 750),
('2020-01-07', 400);
