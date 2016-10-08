<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Author;

use App\Quote;

use App\Http\Requests;

class QuoteController extends Controller
{
    public function getIndex()
    {
        // $quotes = Qoute::all();
        // ['quotes' => $quotes]
        return view('index');
    }
    public function postQuote(Request $request)
    {
        $authorText = $request['Author'];
        $quoteText  = $request['Quote'];

        $author = Author::where('name', $authorText)->first();
        if (!$author) {
            $author = new Author();
            $author->name = $authorText;
            $author->save();
        }
        $quote = new Quote();
        $quote->quote = $quoteText;
        $author->quotes()->save($quote);

        return redirect()->route('index')->with(['message' => 'Quote Inserted Sucessfully']);
    }
}
