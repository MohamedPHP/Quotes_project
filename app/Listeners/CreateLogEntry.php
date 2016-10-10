<?php

namespace App\Listeners;

use App\Events\QouteCreated;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use App\QouteLog;

class CreateLogEntry
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
        $log_entry = new QouteLog();
        $log_entry->author = $author;
        $log_entry->save();
    }
}
