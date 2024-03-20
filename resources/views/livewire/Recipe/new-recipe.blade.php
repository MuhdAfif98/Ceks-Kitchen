<form wire:submit="save">
    <input type="text" wire:model="form.title">
    <div>
        @error('form.title') <span class="error">{{ $message }}</span> @enderror
    </div>
 
    <input type="text" wire:model="form.content">
    <div>
        @error('form.description') <span class="error">{{ $message }}</span> @enderror
    </div>
 
    <button type="submit">Save</button>
</form>