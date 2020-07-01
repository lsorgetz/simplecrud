<?php

namespace App\Widgets;

use TCG\Voyager\Widgets\BaseDimmer;
use App\Models\Admin\Estado;

class Estados extends BaseDimmer
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = Estado::count();
        $string = "Estados";

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-angle-right',
            'title'  => "{$count} {$string}",
            'text'   => '',
            'button' => [
                'text' => $string,
                'link' => route('voyager.estados.index'),
            ],
            'image' => asset('img/pordosol3.jpeg'),
        ]));
    }

    /**
     * Determine if the widget should be displayed.
     *
     * @return bool
     */
    public function shouldBeDisplayed()
    {
        return true;
        // return Auth::user()->can('browse', Voyager::model('Participante'));
    }
}
