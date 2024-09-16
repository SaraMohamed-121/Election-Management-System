create table Candidates(
   Candidate_Symbol number(10)  primary key, 
   Candidate_Name varchar2(50),
   Candidate_Age number(2)check (Candidate_Age >29)
  );
  
  create sequence Candidate_Symbol
	 	    start with 1 
			  increment by 1
	  	  maxvalue 30;
        
        select * from Candidates ;
        drop sequence Candidate_Symbol;
        delete from Candidates;
  
  insert into Candidates  values (Candidate_Symbol.nextval,'Abdullah',30);
  insert into Candidates  values (Candidate_Symbol.nextval,'Ahamad',35);
  insert into Candidates  values (Candidate_Symbol.nextval,'Ali',31);
  insert into Candidates  values (Candidate_Symbol.nextval,'Fahad',32);
  insert into Candidates  values (Candidate_Symbol.nextval,'Khaled',37);
  insert into Candidates  values (Candidate_Symbol.nextval,'Majed',35);
  insert into Candidates  values (Candidate_Symbol.nextval,'Osama',40);
  insert into Candidates  values (Candidate_Symbol.nextval,'Anas',35);
  insert into Candidates  values (Candidate_Symbol.nextval,'Samy',36);
  insert into Candidates  values (Candidate_Symbol.nextval,'Saleh',35);
  insert into Candidates  values (Candidate_Symbol.nextval,'Basm',30);
  insert into Candidates  values (Candidate_Symbol.nextval,'Ibrahim',35);
  
  create table Voters(
   voter_id number(20) primary key, 
   Name_Voter varchar2(50),
   Age_Voter number(2) check(Age_Voter >17),
   Gender_Voter varchar2(7),
   VoteForSymbol number(10) REFERENCES candidates (Candidate_Symbol)
  );
  
   create sequence voter_id
	 	    start with 1 
			  increment by 1
	  	  maxvalue 3000;
        
         drop sequence voter_id;
  
  select * FROM Voters;
  insert into Voters  values (voter_id.nextval,'sara',20,'Female',3);
  insert into Voters  values (voter_id.nextval,'sara',22,'Female',2);
  insert into Voters  values (voter_id.nextval,'sara',22,'Female',3);
  insert into Voters  values (voter_id.nextval,'sara',20,'Female',3);
  insert into Voters  values (voter_id.nextval,'mariam',20,'Female',4);
  insert into Voters  values (voter_id.nextval,'mariam',20,'Female',5);
  insert into Voters  values (voter_id.nextval,'aisha',20,'Female',5);
  insert into Voters  values (voter_id.nextval,'aisha',20,'Female',5);
  insert into Voters  values (voter_id.nextval,'aisha',20,'Female',6);
  insert into Voters  values (voter_id.nextval,'aisha',20,'Female',7);
  insert into Voters  values (voter_id.nextval,'esraa',20,'Female',8);
  insert into Voters  values (voter_id.nextval,'basma',20,'Female',9);
  insert into Voters  values (voter_id.nextval,'esraa',20,'Female',7);
  insert into Voters  values (voter_id.nextval,'sondos',20,'Female',4);
  insert into Voters  values (voter_id.nextval,'sondos',20,'Female',8);
  insert into Voters  values (voter_id.nextval,'sondos',20,'Female',9);
  insert into Voters  values (voter_id.nextval,'yasmeen',20,'Female',10);
  insert into Voters  values (voter_id.nextval,'yasmeen',20,'Female',11);
  insert into Voters  values (voter_id.nextval,'yasmeen',20,'Female',8);
  insert into Voters  values (voter_id.nextval,'yasmeen',20,'Female',6);
  insert into Voters  values (voter_id.nextval,'sohila',20,'Female',6);
  insert into Voters  values (voter_id.nextval,'sohila',20,'Female',12);
  insert into Voters  values (voter_id.nextval,'sohila',20,'Female',3);
  insert into Voters  values (voter_id.nextval,'sohila',20,'Female',6);