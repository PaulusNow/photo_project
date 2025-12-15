<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BookingController extends Controller
{
    //
    public function CreateBooking() {
        return response()->json([
            "status" => true,
            "message" => "Halo dari create booking api"
        ]);
    }
}
