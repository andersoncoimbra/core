<?php
////////////////////////
//Comando  para  laravel
////////////////////////

// composer create-project --prefer-dist laravel/laravel nomeDoProjeto

// chmod -R 755 storange/

// php artisan key:generate

/////////////////
//Codigos  fontes
//////////////////

//Chave esstrangeira para inclusão na migration

$table->foreign('colunaQueRecebeReferencia')->referencs('colunaDaTabelaReferencia')->on('tabelaDaReferencia')->onDelete('cascade')

//modo de como alterar uma tabela pela migration

$table->decimal(2,7)->change();

//metodo para encripitaçãpo

bcrypy('dados a serem encripitados')

// Atributos para desabiliar o Timestamps da model

public $timestamps = false;

//Metodo para atualiza coluna de uma tabela pela Model

$instaciadaModel->update([
	"colunaDaTabela" => "Valor a se atualizado"
	])

//Metodos de associação e desassociação e sicronização] de relacionamentos "Muitos para Muitos"
///////////////////////////////////////////////////////////////////////////////////////////////
		//Associação
$Estancia_da_Model->metado_que_relaciona()->attach('id ou arrays com valores do ids')
		//Desassociação
$Estancia_da_Model->metado_que_relaciona()->detach('id ou arrays com valores do ids')
		//Sicronismo
$Estancia_da_Model->metado_que_relaciona()->sync('id ou arrays com valores do ids')

//Retorno Funçoes de relacionamento
///////////////////////////////////

	//Relacionamento do tipo  "Tem Um"
return $this->hasOne(App\Class::class, 'colunaNaTabelaRelacionada', "colunadoIDDessaModel")

	//Relacionamento do tipo  "Pertence a Um"
return $this->belongTo(App\Class::class,"colunadoIDDessaModel")

	//Relacionamento do tipo  "Tem muntos"
return $this->hasMany(App\Class::class,"colunadoIdDessaModel")

	//Relacionamento do tipo  "Tem muntos"
return $this->belongToMany(App\Class::class,"colunadoIdDessaModel", "id_na_coluna_pivot_de_model", "id_na_coluna_da_model_a_ser_relacionada")


 // Redirect com Parametros - muito util
 ////////////////////////////////////////
 $param = ['id'=>$id,'evg'=>$evg];
 return redirect()->route('get.extras',$param);
 ?>

