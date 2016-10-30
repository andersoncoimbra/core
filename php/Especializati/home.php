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

jete de chamna a ateção so para tecclac

// Atributos para desabiliar o Timestamps da model

public $timestamps = false;

//Metodo para atualiza coluna de uma tabela pela Model

$instaciadaModel->update([
	"colunaDaTabela" => "Valor a se atualizado"
	])

//Retorno Funçoes de relacionamento
///////////////////////////////////

	//Relacionamento do tipo  "Tem Um"
return $this->hasOne(App\Class::class, 'colunaNaTabelaRelacionada', "colunadoIDDessaModel")

	//Relacionamento do tipo  "Pertence a Um"
return $this->belongTo(App\Class::class,"colunadoIDDessaModel")

	//Relacionamento do tipo  "Tem muntos"
return $this->hasMany(App\Class::class,"colunadoIDDessaModel")

 ?>