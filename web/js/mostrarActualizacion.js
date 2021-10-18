$('#admin-tabla').click(function(){
  $("#contenido").load(".jsp");
});

$('#personal').click(function(){
  $("#contenido").load("tabla.jsp");
});

$('#vigilante').click(function(){
  $("#contenido-2").load("perfilVigilante.jsp");
});
