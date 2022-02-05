<!-- # README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

-   Ruby version

-   System dependencies

-   Configuration

-   Database creation

-   Database initialization

-   How to run the test suite

-   Services (job queues, cache servers, search engines, etc.)

-   Deployment instructions

-   ... -->

# Stokmarkt 📈

A stock market app made using Ruby on Rails that allows the user to buy and sell stocks

Live demo [_here_](http://stokmarkt.herokuapp.com/).

Demo accounts:
- Admin
    - Email: admin@test.com
    - Password: test123
- User (Trader)
    - Email: test@test.com
    - Password: test123

## Table of Contents

-   [Features](#features)
-   [Screenshots](#screenshots)
-   [Authors](#authors)

## Features

-   Admin accounts
    -   Approve or reject users 
    -   View, add, edit, and delete users
-   Users (Traders)
    -   Add balance to their account
    -   View their portfolio
    -   Search for companies/stocks
    -   See the top 10 trending stocks
    -   Buy and sell stocks
    -   View their own transaction history

<!--
## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

#### Tool versions

-   Ruby 2.7.2
-   Rails 6.0.4.4
-   NodeJS 12.22.1
-   Yarn 1.22.17
-   PostgreSQL 14.0

### Setup

1. Install the gems, check dependencies

```shell
bundle install
yarn install --check-files
```

2. Setup the database

```shell
rails db:setup
rails db:migrate
```

3. Import family and genus data

```shell
bundle exec rails import:data
```

4. Start the Rails server

```shell
rails s
```

5. Login using the following credentials (optional)

```shell
Username: user
Password: test123
```

## Running the tests

```shell
rspec spec -f d
```
-->

## Screenshots

### Home Page
<img width="1680" alt="Screen Shot 2022-02-04 at 8 28 06 AM" src="https://user-images.githubusercontent.com/85211112/152451889-7d03e1e8-f314-455e-8e1c-4378c018ead8.png">

### Login Screen
<img width="1679" alt="Screen Shot 2022-02-04 at 8 28 23 AM" src="https://user-images.githubusercontent.com/85211112/152451914-0855cb43-aa6d-4f47-bf5f-f7801888cc70.png">

### Admin Dashboard (All Users)
<img width="1680" alt="Screen Shot 2022-02-04 at 8 29 38 AM" src="https://user-images.githubusercontent.com/85211112/152452038-f40ea05d-84f4-4fd2-a957-db7f35797ad8.png">

### Admin Dashboard (Pending Users: Empty)
<img width="1673" alt="Screen Shot 2022-02-04 at 8 30 16 AM" src="https://user-images.githubusercontent.com/85211112/152452100-dda2d4d5-d8ab-41eb-98d2-7a53a9f6ed35.png">

### Admin Dashboard (Pending Users)
<img width="1680" alt="Screen Shot 2022-02-04 at 8 32 13 AM" src="https://user-images.githubusercontent.com/85211112/152452269-26cb2959-55bb-443c-94d5-19a410e2b5a6.png">

### Admin Dashboard (Rejected Users)
<img width="1680" alt="Screen Shot 2022-02-04 at 8 32 35 AM" src="https://user-images.githubusercontent.com/85211112/152452309-50784ed7-e05a-49c9-9f7c-41097d88bb6e.png">

### Admin Dashboard (Add User)
<img width="1680" alt="Screen Shot 2022-02-04 at 8 33 06 AM" src="https://user-images.githubusercontent.com/85211112/152452364-c24509bc-b4f5-4772-9bfb-6e6418cd25b2.png">

### User Dashboard
<img width="1680" alt="Screen Shot 2022-02-04 at 8 34 14 AM" src="https://user-images.githubusercontent.com/85211112/152452490-a82a3eb5-abab-4547-b9ab-4481f83b4f25.png">

<img width="1680" alt="Screen Shot 2022-02-04 at 8 37 42 AM" src="https://user-images.githubusercontent.com/85211112/152452805-a3c4105f-9234-4e14-be02-f3449e490fc9.png">

### Marketplace (Search and Top 10 Trending Stocks)
<img width="1680" alt="Screen Shot 2022-02-04 at 8 34 35 AM" src="https://user-images.githubusercontent.com/85211112/152452526-f5d34fc0-661b-472a-bc21-7dbe1d4afb4f.png">

Search with result
<img width="1680" alt="Screen Shot 2022-02-04 at 8 35 22 AM" src="https://user-images.githubusercontent.com/85211112/152452585-3b1f3f09-b8c4-4c66-9744-edad9d4bfb1e.png">

### Buy Stock
<img width="1680" alt="Screen Shot 2022-02-04 at 8 35 46 AM" src="https://user-images.githubusercontent.com/85211112/152452631-ab136bac-f5f2-4b6d-8003-45059ec71bbf.png">

### Transaction History
<img width="1680" alt="Screen Shot 2022-02-04 at 8 38 19 AM" src="https://user-images.githubusercontent.com/85211112/152452852-f6cf67f8-621e-40cc-b045-441e9438230f.png">


## Authors

-   **John Carreos** - [Github](https://github.com/JohnCarreos)
-   **Edric Emmanuel Sia** - [Github](https://github.com/easia1)
