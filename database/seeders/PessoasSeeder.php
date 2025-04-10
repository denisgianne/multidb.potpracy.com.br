<?php

namespace Database\Seeders;

use App\Models\Pessoa;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class PessoasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Pessoa::factory()->count(2000)->create();
    }
}
