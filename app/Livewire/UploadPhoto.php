<?php

namespace App\Livewire;

use App\Models\Profile;
use Livewire\Component;
use Livewire\WithFileUploads;

class UploadPhoto extends Component
{
    use WithFileUploads;

    public $photo;

    public function save()
    {
        $this->validate([
            'photo' => 'max:1024',
        ]);

        $this->photo->store('photos');
    }

    public function render()
    {
        return view('livewire.upload-photo', [
            'photos' => Profile::all(),
        ]);
    }
}