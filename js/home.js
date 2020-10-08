'use strict';


function jumbotron(accion, titulo, subtitulo) {


    if (accion == true) {

        $('#jumbotron').removeClass('d-none');
        $('#jumbotron').addClass('d-block');

        if (titulo || subtitulo) {
            //script para cambiar el jumbotron
            $('#jumbotron').empty().append(
                '<div class="container text-right">' +
                '<h2 class="">' + titulo +
                '</h1>' +
                '<p class="lead">' + subtitulo +
                '</p> </div>'

            );
        }
    } else {
        $('#jumbotron').empty();
        $('#jumbotron').removeClass('d-block');
        $('#jumbotron').addClass('d-none');
    }
}


//funcion para consultar las credenciales
function credenciales(operation, credential, name, id) {
  
    let token=localStorage.getItem("token");
    //let token = Cookies.get('token');;


    console.log(token);

    $.ajax({

        url: "./php/credentials.php", //script para subir cursos a la base de datos
        type: "post",
        data: {

            "operation": operation,
            "credential": credential,
            "name": name,
            "id": id,
            "token": token

        },


        beforeSend: function () { //Previo a la peticion tenemos un cargando

            if (operation == "traer2" || operation == "guardar" || operation == "eliminar" || operation == "modificar") {
                $('#contenedor_home').empty(); //vaciamos el contenedor en el cual van a cargarse los cursos

            } else {
                $('#contenedor_home').empty(); //vaciamos el contenedor en el cual van a cargarse los cursos
                $('#carga_cursos').show("fast"); //mostramos rapidamente los elementos que representan a los cursos
            }
        },
        error: function (error) { //Si ocurre un error en el ajax
            //alert("Error, reintentar. "+error);

        },
        complete: function () { //Al terminar la peticion, sacamos la "carga" visual

        },

        success: function (data) {

            $('#carga_cursos').hide("fast"); //escondemos rapidamente los elementos que representan a los cursos

            console.log(data);
            //$('#alert').addClass('alert-warning');
            if (data == 1) {
                credenciales("traer2", "", "", "");
                $('#alert').empty().append('<h6 class="alert alert-success"> <strong>¡Guardado exitoso!</strong>. </h6>');
            } else {
                if (data == 2) {
                    credenciales("traer2", "", "", "");
                    $('#alert').empty().append('<h6 class="alert alert-warning"> <strong>¡Error!</strong>. </h6>');
                } else {
                    $('#contenedor_home').append(data);
                }
            }


            $('.modificar-credencial').click(function () {

                let id = $(this).attr("id"); //obtenemos id de la credencial
                let name = $('#credentialname' + id).val();
                let credential = $('#credential' + id).val();
                //console.log("name: " + name + " credential: " + cred + " id: " + id);
                credenciales("modificar", credential, name, id);

            });

            $('.eliminar-credencial').click(function () {

                var opcion = confirm("¿Esta seguro que desea eliminar este curso?");
                if (opcion == true) {

                    let id = $(this).attr("ide");
                    let name = $('#credentialname' + id).val();
                    let cred = $('#credential' + id).val();
                    //console.log("name: " + name + " credential: " + cred + " id: " + id);
                    credenciales("eliminar", credential, name, id);

                } else {
                    cartel("Ha cancelado la operación.");
                }






            });
            $('#guardar-credencial').click(function () {

                var opcion = true //confirm("¿Esta seguro que desea eliminar este curso?");
                if (opcion == true) {

                    let name = $('#credentialname').val();
                    let credential = $('#credential').val();
                    //console.log("name: " + name + " credential: " + credential + " id: ");
                    credenciales("guardar", credential, name, "");

                } else {
                    cartel("Ha cancelado la operación.");
                }






            });


        }

    });

}


$(document).ready(function () {


    $('#credenciales').click(() => {
        jumbotron(true, 'Credenciales', '');
        credenciales("traer", "", "", "");

    });

});