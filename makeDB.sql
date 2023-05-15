drop table if exists Plushies;
CREATE table Plushies(
	`plushieName` varchar(70),
	`dateObtained` date,
	`speciesName` varchar(70),
	`talkingAboutThem` varchar(1500),
	`imgSRC` varchar(70)
);
drop table if exists blogPosting;
create TABLE blogPosting(
	`Title` varchar(100),
	`rambles` varchar(2000),
	`datePosted` date,
	`imgSRC` varchar(70)
	
);
drop table if exists cooking;
create Table cooking(
	`mealName` varchar(100),
	`recipe` varchar(300),
	`dateAdded` date,
	`review` varchar(500),
	`imgSRC` varchar(70),
	`imgSRC2` varchar(70)
);
drop table if exists mediaReview;
create TABLE mediaReview(
	nameOfMedia varchar(100),
	linktoIMDB varchar(200),
	opinions varchar(2000),
	imgSRC varchar(70),
	dayReviewed date 
);
drop table if exists Modelling;
create table Modelling(
	dateMade date,
	nameOfModel varchar(100),
	imgSRC varchar(70),
	description varchar(1000)
);