<?php

namespace App\Http\Controllers;

use App\Models\Admin\Usuario;
use TCG\Voyager\Events\BreadDataDeleted;
use TCG\Voyager\Events\BreadDataUpdated;
use TCG\Voyager\Facades\Voyager;
use Illuminate\Http\Request;

class UsuarioController extends \TCG\Voyager\Http\Controllers\VoyagerBaseController
{

    public function trocarStatus($id)
    {
        $slug = "usuarios";
        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();
        $data = call_user_func([$dataType->model_name, 'findOrFail'], $id);

        // Check permission
        $this->authorize('edit', $data);

        $data->status = !$data->status;
        $data->save();
        event(new BreadDataUpdated($dataType, $data));
        return redirect()
            ->route("voyager.{$dataType->slug}.index")
            ->with([
                'message'    => __('voyager::generic.successfully_updated')." {$dataType->display_name_singular}",
                'alert-type' => 'success',
            ]);
    }

    public function exportarUsuarios(\Illuminate\Http\Request $request)
    // public function exportarUsuarios()
    {
        $this->authorize('exportarusuarios', app('App\Models\Admin\Usuario'));
        $usuarios = Usuario::with('cidade')
                               ->where('status', true)
                               ->get();
        $csvExporter = new \Laracsv\Export();
        $csvExporter->build($usuarios, ['id' => '#id',
                                        'nome' => 'Associado',
                                        'email' => 'E-mail',
                                        'telefone' => 'Telefone',
                                        'redes_sociais' => 'Redes sociais',
                                        'endereco' => 'Endereço',
                                        'bairro' => 'Bairro',
                                        'cep' => 'CEP',
                                        'cidade.nome' => 'cidade'])
                                         ->download('usuarios.csv');
    }


}
