<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Pessoa extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'nome',
        'email',
        'nascido_em',
        'mae_nome',
        'pai_nome',
        'sexo',
        'telefone'
    ];

    protected $casts = [
        'nascido_em' => 'date',
    ];
}
