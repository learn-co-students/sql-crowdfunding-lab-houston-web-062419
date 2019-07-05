
create trigger users_ins_trigger after insert on users
  when new.id < 20 begin
    insert into users(id, name, age) values(new.id + 1, "user " + new.id, 20 + new.id);
  end;

create trigger project_ins_trigger after insert on projects
    when new.id < 10 begin
      insert into projects values(new.id + 1, "title " + new.id, "IT", 10 + new.funding_goal, "01.01.2020", "01.01.2021");
    end;

create trigger pledges_ins_trigger after insert on pledges
    when new.id < 30 begin
      insert into pledges values(new.id + 1, random(), 1, 1);
    end;

pragma recursive_triggers = 1;

insert into users values(1, "user ", 20);
insert into projects values(1, "title ", "IT", 10, "01.01.2020", "01.01.2021");
insert into pledges values(1, 1000, 1, 1);
