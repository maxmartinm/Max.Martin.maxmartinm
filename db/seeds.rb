# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.delete_all
Classification.delete_all
Charity.delete_all

Category.create([{title: 'Animals'}, {title: 'Arts, Culture, Humanities'}, {title: 'Education'}, {title: 'Environment'}, {title: 'Health'}, {title: 'Human Services'}, {title: 'International'}, {title: 'Human and Civil Rights'}, {title: 'Religion'}, {title: 'Community Developement'}, {title: 'Research and Public Policy'}])
Charity.create([
 	{name: 'American Bird Conservancy'}, {name: 'Wild Conversation Network'}, {name: 'PAWS Chicago'}, {name: 'Banfield Charitable Trust'}, {name: 'The Wild Foundation'}, #Animals
	{name: 'Fractured Atlas'}, {name: 'Community Partnership for Arts and Culture'}, {name: 'The Seattle Public Library Foundation'}, {name: 'Walking Mountains Science Center'}, {name: 'Manhattan Theatre Club'}, #Arts, Culture, Humanities
	{name: 'Step Up For Students'}, {name: 'The Fund for Public Schools'}, {name: 'The NEA Foundation'}, {name: 'The Parent-Child Home Program'}, {name: 'Street School'}, #Education
	{name: 'Fauna & Flora International'}, {name: 'Southern Environmental Law Center'}, {name: 'Beyond Pesticides'}, {name: 'World Resources Institute'}, {name: 'Conservation Law Foundation'}, #Environment
	{name: 'The Lustgarten Foundation for Pancreatic Cancer Research,'}, {name: 'Fisher Center for Alzheimer’s Research Foundation'}, {name: 'Aplastic Anemia & MDS International Foundation'}, {name: 'Camp John Marc'}, {name: 'Living Beyond Breast Cancer'}, #Health
	{name: 'Midwest Food Bank'}, {name: 'Weld Food Bank'}, {name: 'Air Warrior Courage Foundation'}, {name: 'Safe Haven Family Shelter'}, {name: 'Special Operations Warrior Foundation'}, #Human Services
	{name: 'Direct Relief'}, {name: 'MAP International'}, {name: 'Books For Africa'}, {name: 'Soles4Souls'}, {name: 'Meds & Foods for Kids'}, #International
	{name: 'Equal Justice Initiative'}, {name: 'Chicago Foundation for Women'}, {name: 'Compassion & Choices'}, {name: 'The Institute for Justice'}, {name: 'National Immigration Law Center'}, #Human and Civil Rights
	{name: 'Urban Youth Impact'}, {name: 'Fellowship of Christian Athletes'}, {name: 'The Jewish Education Project'}, {name: 'Hebrew Free Burial Association'}, #Religion
	{name: 'California Community Foundation'}, {name: 'Robin Hood Foundation'}, {name: 'Rebuilding Together'}, {name: 'Jewish Federation of Greater Pittsburgh'}, {name: 'The Boston Foundation'}, #Community Developement
	{name: 'RESULTS Educational Fund'}, {name: 'Middle East Forum'}, {name: 'Public Interest Projects'}, {name: 'Center for Food Safety'}, {name: '	Safe Kids Worldwide'}, #Research and Public Policy
])	