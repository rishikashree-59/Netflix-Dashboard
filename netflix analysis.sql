CREATE TABLE netflix_titles (
    title TEXT,
    type TEXT,
    release_year INT,
    age_certification TEXT,
    runtime INT,
    genres TEXT,
    production_countries TEXT,
    seasons INT,
    imdb_id TEXT,
    imdb_score NUMERIC(3,1),
    imdb_votes INT
);

select * from netflix_titles;

select type, count(*) as count
from netflix_titles
group by type;

select title, imdb_score 
from netflix_titles
where imdb_score is not null
order by imdb_score desc
limit 10;

select genres, count(*) as total
from netflix_titles
group by  genres
order by total desc;

select production_countries, count(*) as total
from netflix_titles
group by production_countries
order by total desc
limit 10;

select release_year, count(*) as total_releases
from netflix_titles
group by release_year
order by release_year ;

select type, avg(imdb_score) as avg_rating
from netflix_titles
group by type;

select title, imdb_votes
from netflix_titles
where imdb_votes is not null
order by imdb_votes desc
limit 10;



