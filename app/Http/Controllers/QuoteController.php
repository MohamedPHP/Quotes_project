<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Author;

use App\Quote;

use App\Http\Requests;

use App\AuthorLog;

use App\Events\QouteCreated;
use Illuminate\Support\Facades\Event;

class QuoteController extends Controller
{
    public function getIndex($author = null)
    {
        if (!is_null($author)) {
            $author_exsists = Author::where('name', $author)->first();
            if ($author_exsists) {
                $quotes = $author_exsists->quotes()->orderBy('created_at', 'desc')->paginate(6);
                return view('index', ['quotes' => $quotes, ]);
            }
        }
        $quotes = Quote::paginate(6);
        return view('index', ['quotes' => $quotes]);
    }
    public function postQuote(Request $request)
    {
        $this->validate($request, [
            'Author' => 'required|alpha',
            'Quote'  => 'min:5',
            'email'  => 'email|required'
        ]);
        $authorText = $request['Author'];
        $quoteText  = $request['Quote'];
        $emailText  = $request['email'];

        $author = Author::where('name', $authorText)->first();
        if (!$author) {
            $author = new Author();
            $author->name = $authorText;
            $author->email = $emailText;
            $author->save();
        }
        $quote = new Quote();
        $quote->quote = $quoteText;
        $author->quotes()->save($quote);

        Event::fire(new QouteCreated($author));

        return redirect()->route('index')->with(['message' => 'Quote Inserted Sucessfully']);
    }
    public function getDelete($quote_id)
    {
        $quote = Quote::find($quote_id);
        $author_delete = false;
        if (count($quote->author->quotes) === 1) {
            $quote->author->delete();
            $author_delete = true;
        }
        $quote->delete();
        $msg = $author_delete === false ? 'Quote Deleted Sucessfully' : 'Quote Deleted Sucessfully And Author Also';
        return redirect()->route('index')->with(['message' => $msg]);
    }

    public function getMailCallback($author_name)
    {
        $author_log = new AuthorLog();
        $author_log->author = $author_name;
        $author_log->save();
        return view('callback', ['author_name' => $author_name]);
    }
}
