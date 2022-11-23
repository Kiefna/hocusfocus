CREATE MIGRATION m17la4wgufkkbprz3navvy365jkteydszrexxqpexeksliumtxx5gq
    ONTO initial
{
  CREATE ABSTRACT TYPE default::WithSoftDeletes {
      CREATE PROPERTY deleted_at -> std::datetime;
  };
  CREATE ABSTRACT TYPE default::WithTimestamps {
      CREATE REQUIRED PROPERTY created_at -> cal::local_datetime {
          SET default := (cal::to_local_datetime(std::datetime_current(), 'UTC'));
      };
  };
  CREATE TYPE default::User EXTENDING default::WithTimestamps, default::WithSoftDeletes {
      CREATE REQUIRED PROPERTY email -> std::str {
          CREATE CONSTRAINT std::exclusive;
      };
      CREATE PROPERTY email_verified_at -> cal::local_datetime;
      CREATE REQUIRED PROPERTY first_name -> std::str;
      CREATE REQUIRED PROPERTY last_name -> std::str;
      CREATE PROPERTY name := ((((.first_name ++ ' ') ++ .last_name) IF EXISTS (.last_name) ELSE .first_name));
      CREATE REQUIRED PROPERTY owner -> std::bool {
          SET default := false;
      };
      CREATE PROPERTY password -> std::str;
      CREATE PROPERTY photo_path -> std::str;
      CREATE PROPERTY remember_token -> std::str;
  };
};
