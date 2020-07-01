<?php

namespace App\Widgets;

use TCG\Voyager\Widgets\BaseDimmer;
use App\Models\Admin\Cidade;

class Cidades extends BaseDimmer
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
        $count = Cidade::count();
        $string = "Cidades";

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-double-right',
            'title'  => "{$count} {$string}",
            'text'   => '',
            'button' => [
                'text' => $string,
                'link' => route('voyager.cidades.index'),
            ],
            'image' => asset('img/pordosol2.jpg'),
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
