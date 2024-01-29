---entries for donor table
select * from donor
Select * from donor where person_name = 'Jonathan Smith'
select person_name from donor
select height_cm from donor where height_cm>170
select * from donor where person_name = 'William Johnson'
select height_cm  from donor where height_cm<160
select weight_kg from donor where weight_kg>65
select weight_kg from donor where weight_kg<50
select age from donor where age=52
select * from donor where blood_type='AB+'

---entries for patient table
select * from patient
select * from patient where need_status='Urgent'
select * from patient where need_status='Stable'
select * from patient where need_status='Critical'
select * from patient where blood_type= 'A+'
select blood_type from patient where blood_type='AB-'
select *  from patient where blood_type='B-'
select blood_type from patient where blood_type='AB+'


