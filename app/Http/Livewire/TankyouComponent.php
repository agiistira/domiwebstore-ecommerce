<?php

namespace App\Http\Livewire;

use Livewire\Component;

class TankyouComponent extends Component
{
    public function render()
    {
        return view('livewire.tankyou-component')->layout("layouts.base");
    }
}
