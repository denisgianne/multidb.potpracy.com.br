<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Pessoa>
 */
class PessoaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $sexo = $this->faker->randomElement(['M', 'F']);
        $nome = $sexo === 'M' 
            ? $this->faker->firstNameMale() . ' ' . $this->faker->lastName()
            : $this->faker->firstNameFemale() . ' ' . $this->faker->lastName();
        $email = str($nome)->lower()->ascii()->slug('_') . rand(100000, 999999) . '@potpracy.com.br';

        return [
            'nome' => $nome,
            'email' => $email,
            'nascido_em' => $this->faker->dateTimeBetween('-80 years', '-18 years')->format('Y-m-d'),
            'mae_nome' => $this->faker->firstNameFemale() . ' ' . $this->faker->lastName(),
            'pai_nome' => $this->faker->firstNameMale() . ' ' . $this->faker->lastName(),
            'sexo' => $sexo,
            'telefone' => $this->faker->phoneNumber(),
        ];
    }
}
