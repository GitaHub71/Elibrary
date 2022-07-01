This elibrary is built using Laravel.

<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About ELibrary

ELibrary is simple library web application for administrator purposes. Features including search, sort, and filters. CRUD features also included. An author can write many books, and a book can be writen by many authors. Using standard bootstrap template, I utilize every feature possible to make this website simple but functional.

- Search can be done in every pages possible. To search through addressed table, go to any pages where the table is indicated. 
- Sort can be done also when there's a request. Any multiple filters are possible.
- Filters are available on the top left of the page.
- Date filters included for last 1 year, last 1 month, and last 7 days from the current date.
- Search also can be done for dates.
- Dinamically add multiple authors when add/update books.

Any advices or modifications are welcomed.  

## Points to get started

To add factory data:

- All Database seeders are called in 'DatabaseSeeder'.
- Uncomment all seeders to add the stated amount of data.
- If you want to add some customized amount, be aware that you also have to input the max rng with the custom amount in the factories involved.
- If you want to add some unreturned books in table loan, comment all seeders except for loans, and comment 'date_return' in 'LoanFactory'.
- If you add a custom amount of data, please check the max rng in every Factory and match with the custom amount before you run the seeder.
- And last before you run the application, add/edit a set of email-password in the 'admins' table with a valid domain directly from the database. Use that to login to the application.
