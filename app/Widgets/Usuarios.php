<?php

namespace App\Widgets;

use TCG\Voyager\Widgets\BaseDimmer;
use App\Models\Admin\Usuario;

class Usuarios extends BaseDimmer
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
        $count = Usuario::count();
        $string = "Usuários";

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-people',
            'title'  => "{$count} {$string}",
            'text'   => '',
            'button' => [
                'text' => $string,
                'link' => route('voyager.usuarios.index'),
            ],
            'image' => asset('img/pordosol1.jpg'),
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
