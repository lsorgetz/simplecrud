<?php
namespace App\Actions;

use TCG\Voyager\Actions\AbstractAction;

class TrocarStatusAction extends AbstractAction
{
    // lista das tabelas que têm campo status e/ou que devem apresentar a opção de ativar/desativar no [B]READ
    // As rotas e os controllers de cada elemento da lista precisam ser implementados
    private $lista = array (
        "usuarios",
    );

    public function getDataType()
    {
        $uri = \Route::getCurrentRoute()->uri;
        $bread = explode('/', $uri);
        if (in_array($bread[1], $this->lista)) {
            return $bread[1];
        } else  {
            return "";
        }

    }

    public function getTitle()
    {
        return $this->data->status ? 'Desativar' : 'Ativar';
    }

    public function getIcon()
    {
        return $this->data->status ? 'glyphicon glyphicon-ban-circle' : 'glyphicon glyphicon-ok';
    }

    public function getPolicy()
    {
        return 'edit';
    }

    public function getAttributes()
    {
        return [
            'class' => $this->data->status ? 'btn btn-sm btn-danger pull-right trocarStatus' : 'btn btn-sm btn-success pull-right trocarStatus',
            'style' => 'margin-right: 5px;'
        ];
    }

    public function getDefaultRoute()
    {
        return route($this->dataType->slug.'.trocarstatus', $this->data->{$this->data->getKeyName()});
    }
}
