php artisan migrate --step --database=external; php artisan db:seed --class=PessoasSeeder --database=external;
php artisan migrate --step --database=db01; php artisan db:seed --class=PessoasSeeder --database=db01;
php artisan migrate --step --database=db02; php artisan db:seed --class=PessoasSeeder --database=db02;
php artisan migrate --step --database=db03; php artisan db:seed --class=PessoasSeeder --database=db03;

# Just seeders
php artisan db:seed --class=PessoasSeeder --database=external;
php artisan db:seed --class=PessoasSeeder --database=db01;
php artisan db:seed --class=PessoasSeeder --database=db02;
php artisan db:seed --class=PessoasSeeder --database=db03;

