-- begin SAMPLE_SALESPERSON
alter table SAMPLE_SALESPERSON add constraint FK_SAMPLE_SALESPERSON_TERRITORY foreign key (TERRITORY_ID) references SAMPLE_TERRITORY(ID)^
alter table SAMPLE_SALESPERSON add constraint FK_SAMPLE_SALESPERSON_PHOTO foreign key (PHOTO_ID) references SYS_FILE(ID)^
create index IDX_SAMPLE_SALESPERSON_PHOTO on SAMPLE_SALESPERSON (PHOTO_ID)^
create index IDX_SAMPLE_SALESPERSON_TERRITORY on SAMPLE_SALESPERSON (TERRITORY_ID)^
-- end SAMPLE_SALESPERSON
-- begin SAMPLE_ORDER
alter table SAMPLE_ORDER add constraint FK_SAMPLE_ORDER_SALESPERSON foreign key (SALESPERSON_ID) references SAMPLE_SALESPERSON(ID)^
create index IDX_SAMPLE_ORDER_SALESPERSON on SAMPLE_ORDER (SALESPERSON_ID)^
-- end SAMPLE_ORDER
