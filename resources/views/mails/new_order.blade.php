@component('mail::message')
<h1>Pojawiło się nowe zamówienie!</h1> 

<h3>Dane kupującego:</h3>
<br>
<p>Imię i nazwisko: {{ $order->main_name }}</p>
<p>Adres E-mail: {{ $order->main_email }}</p>
<p>Numer telefonu: {{ $order->main_phone }}</p>
<p>Adres: {{ "$order->main_street $order->main_house_number/$order->main_flat_number, $order->main_zip_code $order->main_city" }}</p>
@if(!$order->second_message)
<p>Wiadomość: {{ $order->main_message }}</p>
@else
<br><br>
<h3>Dostawa na inny adres: </h3>
<br>
<p>Imię i nazwisko: {{ $order->second_name }}</p>
<p>Adres E-mail: {{ $order->second_email }}</p>
<p>Numer telefonu: {{ $order->second_phone }}</p>
<p>Adres: {{ "$order->second_street $order->second_house_number/$order->second_flat_number, $order->second_zip_code $order->second_city" }}</p>
<p>Wiadomość: {{ $order->second_message }}</p>
@endif

<br><br>
<h3>Dostawa i płatność</h3>
<br>
<p>Dostawa: {{ $delivery->title }}</p>
<p>Płatność: {{ $payment }}</p>

<br><br>

<h2>Do zapłaty: {{ number_format($order->sum, 2) }} PLN</h2>





@component('mail::button', ['url' => url("/admin-panel/shop")])
Zobacz zamówienie
@endcomponent

{{ config('app.name') }}
@endcomponent
