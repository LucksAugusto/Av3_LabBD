$( document ).ready( function() {
	console.log('carregado')
	var mapa_provas = [{ //AOC	LH	BD
		id: ['4203010', '4203020', '4208010', '4226004'],
		provas: [{
			nome: 'P1',
			id_prova: 1
		},
		{
			nome: 'P2',
			id_prova: 2
		}, 
		{
			nome:'Trabalho',
			id_prova: 4
		}, 
		{
			nome:'Exame',
			id_prova: 6
		}]
	},
	{ //SOI
		id: ['4213003', '4213013'],
		provas: [{
			nome: 'P1',
			id_prova: 1
		},
		{
			nome: 'P2',
			id_prova: 2
		}, 
		{
			nome:'Trabalho',
			id_prova: 4
		}, 
		{
			nome:'Pre-Exame',
			id_prova: 5
		},
		{
			nome:'Exame',
			id_prova: 6
		}]
	},
	{ //LAB BD
		id: ['4233005'],
		provas: [{
			nome: 'P1',
			id_prova: 1
		},
		{
			nome: 'P2',
			id_prova: 2
		}, 
		{
			nome:'P3',
			id_prova: 3
		},
		{
			nome:'Exame',
			id_prova: 6
		}]
	},
	{ //MPC
		id: ['5005220'],
		provas: [{
			nome: 'Monografia Completa',
			id_prova: 7
		},
		{
			nome: 'Monografia Resumida',
			id_prova: 8
		},
		{
			nome:'Exame',
			id_prova: 6
		}]
	}
	];

	function pega_provas(id_prova) {
		var flg = false;
		var pr = null;
		mapa_provas.forEach(function(prova) {
			prova.id.forEach(function(id) {
				if (id_prova == id) pr = prova;
			}, this);
		}, this);
		return pr;
	}

	$('#select').on('change', function(){
		var disciplina = $(this).val();
		var prova = pega_provas(disciplina);
		var html = '';
		prova.provas.forEach(function(el) {
			html = html.concat('<label class="radio-inline"><input type="radio" name="id_prova" value="' + el.id_prova +
					'"/>' + el.nome + '</label>');
		}, this);
		
		$('#vue').html(html);
	});
	
	
});

