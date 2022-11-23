CREATE MIGRATION m1y762zjegwvm7uym66wukjcxlhse2yd7dxx5ptosr434hlvjryyiq
    ONTO m17la4wgufkkbprz3navvy365jkteydszrexxqpexeksliumtxx5gq
{
  CREATE TYPE default::Task EXTENDING default::WithTimestamps, default::WithSoftDeletes {
      CREATE REQUIRED LINK user -> default::User;
      CREATE REQUIRED PROPERTY order -> std::int64;
      CREATE REQUIRED PROPERTY prequired -> std::int64 {
          SET default := 1;
      };
      CREATE REQUIRED PROPERTY text -> std::str;
  };
};
