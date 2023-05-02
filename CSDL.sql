create database CDTN_EOFFICE

select *from Nguoidungs

ALTER TABLE Vanbandens
ADD FOREIGN KEY (Idnguoidung) REFERENCES Nguoidungs(Idnguoidung);

ALTER TABLE Vanbandens
ADD Madonvi INT
    CONSTRAINT Donvis
        FOREIGN KEY (Madonvi) 
        REFERENCES Donvis(Madonvi)
;

sp_rename 'Vanbandens.Id', 'ten_cot_moi', 'COLUMN';