@component('mail::message')
Odpowiedź na mail o temacie: {{ $subject }} 
<br>
<br>
Treść wiadomości: 
<br>
{{ $message }}


<br>
{{ config('app.name') }}
@endcomponent
