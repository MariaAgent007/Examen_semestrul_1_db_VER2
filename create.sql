create table if not exists donor (
	id serial not null,
	person_name text not null,
	age int not null,
	height_cm int not null,
	weight_kg int not null,
	blood_type char (3) not null,
	primary key (id)
);

create table if not exists patient (
	id serial not null,
	blood_type char (3) not null,
	need_status text not null,
	primary key (id)
);

create table if not exists donor_patient (
	id serial not null,
	donor_id integer not null,
	patient_id integer not null,
	primary key (id),
	foreign key (donor_id) references donor (id),
	foreign key (patient_id) references patient (id)	
);

create table if not exists nurse (
	id serial not null,
	years_experience int not null,
	salary_ron int not null,
	primary key (id)
);

create table if not exists patient_nurse(
	id serial not null,
	patient_id int not null,
	nurse_id int not null,
	primary key (id),
	foreign key (patient_id) references patient (id),
	foreign key (nurse_id) references nurse (id)
);

create table if not exists donor_nurse (
	id serial not null,
	donor_id int not null,
	nurse_id int not null,
	primary key (id),
	foreign key (donor_id) references donor (id),
	foreign key (nurse_id) references nurse (id)
);

create table if not exists blood_donation_type (
	id serial not null,
	donation_type text not null,
	frequency_days int not null,
	primary key (id)	
);

create table if not exists pre_examination (
	id serial not null,
	pre_exam_id char (8) not null,
	hemoglobin_gDL decimal (5,2) not null,
	pulse_rate_BPM int not null,
	temperature_C decimal (5,2) not null,
	primary key (id)
);

create table if not exists donation (
	id serial not null,
	amount_donated_ml int,
	pre_exam_id_don int,
	donation_id_don int,
	nurse_id_don int,
	donation_type_don int,
	primary key (id),
	foreign key (pre_exam_id_don) references pre_examination (id),
	foreign key (donation_id_don) references donor (id),
	foreign key (nurse_id_don) references nurse (id),
	foreign key (donation_type_don) references blood_donation_type (id)
);

create table if not exists location_codes (
	id serial not null,
	location_code char (10) not null,
	description text not null,
	primary key (id)
);

create table if not exists donation_location (
	id serial not null,
	city_usa text not null,
	donation_location_code int,
	primary key (id),
	foreign key (donation_location_code) references location_codes (id)
);
