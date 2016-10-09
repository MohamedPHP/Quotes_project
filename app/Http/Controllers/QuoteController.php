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
        $quotes = Quote::all();
        return view('index', ['quotes' => $quotes]);
    }
    public function postQuote(Request $request)
    {
        $this->validate($request, [
            'Author' => 'required|alpha',
            'Quote'  => 'min:5'
        ]);
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
    public function getDelete($quote_id)
    {
        $quote = Quote::find($quote_id);
        if (count($quote->author->qoutes) === 1) {
            $quote->author->delete();
        }
        $quote->delete();
        return redirect('/');
    }
}
