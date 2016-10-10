<?php

namespace App\Listeners;

use App\Events\QouteCreated;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Support\Facades\Mail;

class UserNotification
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  QouteCreated  $event
     * @return void
     */
    public function handle(QouteCreated $event)
    {
        $author = $event->author_name;
        $email  = $event->author_email;
        Mail::send('email', ['name' => $author], function ($message) use($email, $author) {
            $message->from('mohamedzayed709@yahoo.com', 'Mohamed');
            $message->to($email, $author);
            $message->subject('Thanks');
        });
    }
}
