# Movie Date API

API created to fetch movies, cities and tickets appointments to [MovieDate](https://github.com/bren2102/MovieDate). Also, appointments created on MovieDate will be stored in appointments.

## Built With

- Ruby v2.6.5
- Ruby on Rails v6.0.3.2

## Fetching

Fetch all movies:
```
https://bren2102-moviedateapi.herokuapp.com/movies
```

Fetch all cities:
```
https://bren2102-moviedateapi.herokuapp.com/cities
```

Fetch tickets per user:
```
https://bren2102-moviedateapi.herokuapp.com/tickets/:username
```

### Prerequisites

Ruby: 2.6.3
Rails: 5.2.3
Postgres: >=9.5

### Setup

Install and update gems with:

```
bundle install
bundle update
```

Setup database with:

```
rails db:create
rails db:migrate
```

### Usage

Start server with:

```
    rails server
```

Use rails console to create movies and cities:

Create cities

```
    City.create(:name => "cityname")
```

Create movies
- Notice that price is float and last is an integer
```
    Movie.create(:name => "movieName", :price => 10.00, :description => "descripion", :image => "imageUrl", :lasts => 100 )
```

## Author

👤 **Brenda Yucra**

- Github: [@bren2102](https://github.com/bren2102) 
- Twitter: [@BrendaYucra2](https://twitter.com/BrendaYucra)
- Linkedin: [Brenda Yucra](https://www.linkedin.com/in/brenda-yucra/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/bren2102/MovieDateApi/issues).

## Show your support

Give a ⭐️ if you like this project!