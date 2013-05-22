$(document).ready(function(){
	var document_height=$(document).height();
	var $body=$('body');
	var $grid=$('<div class="visual-grid container"></div>');
	for(var i=1;i<=12;i++){
		var $column=$('<div class="g1"></div>');
		if(i==1){
			$column.addClass('alpha');
		}
		if(i==12){
			$column.addClass('omega');
		}

		$grid.append($column);
		$column.css({
			'height':'100%',
			'background-color':'rgba(0,100,100,0.15)'
		});
	}
	$body.append($grid);
	$grid.css({
		'display':'none',
		'position':'absolute',
		'left':0,
		'top':0,
		'z-index':100000,
		'height':document_height,
		'width':'100%',
		'background-color':'rgba(220,255,100,0.3)'

	});
	$body.keypress(function(event){
		var e=event;
		if( e.which === 103 && ( e.target.tagName === 'BODY' || e.altKey === true || e.ctrlKey === true) ){
			var display=$grid.css('display');
			if(display === 'none'){
				$grid.css('display','block');
			}
			else{
				$grid.css('display','none');
			}
		}
	});
});