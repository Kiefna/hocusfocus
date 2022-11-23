INSERT User {
	email := 'chris.candell@chatterblock.com',
	password := 'ij4u4q11o82',
	first_name := 'Chris',
	last_name := 'Candell'
} UNLESS conflict on .email;
