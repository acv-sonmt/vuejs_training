@if ($_message = session('message-success'))
    <p class="bg-success pd-16">{{ $_message }}</p>
@elseif ($_message = session('message-warning'))
    <p class="bg-warning pd-16">{{ $_message }}</p>
@elseif ($_message = session('message-error'))
    <p class="bg-error pd-16">{{ $_message }}</p>
@endif
