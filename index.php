<!doctype html>
<html chartset="utf-8">
<head>
    <title>UMAIC :: Monitore de medios</title>
    <link rel="shortcut icon" href="favicon.ico" />
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="js/datatables.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/HoldOn.min.js"></script>

    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/HoldOn.min.css">
    <link rel="stylesheet" type="text/css" href="css/fa/css/font-awesome.min.css">

    <script type="text/javascript">
        var init = true;
        var dt;

        $(document).ajaxStart(function(){
            HoldOn.open({theme:"sk-dot"})
        }).ajaxStop(function(){
            HoldOn.close();
        });

        $(function(){
            $('#data > thead').hide();
        });
        function doIt() {

            var f = $('#f').val();

            if (f != '') {
                $('#data > thead').show();

                var uri = 'json.php?x=bgt5678uhb&f=' + f + '&d=' + $('#d').val();

                if (init) {
                    dt = $('#data').DataTable( {
                        ajax: uri,
                        "columnDefs": [
                            { "width": "45%", "targets": 0 },
                            { "width": "45%", "targets": 1 },
                        ]
                    });

                    init = false;
                }
                else {
                    dt.ajax.url(uri);
                    dt.ajax.reload();
                }
            }
        }
    </script>
</head>
<body>
    <div id="cabecera">
        <div id="logo" class="pull-left">
            <i class="fa fa-microphone fa-pull-left fa-3x"></i> monitoreo <br> de medios</div>
        <div class="right">
            <a target="_blank" href="http://umaic.org">
                <div class="pull-right" id="cabecera-logo-umaic"></div>
            </a>
        </div>
    </div>
    <div id="cont" class="container-fluid">
        <div class="row">
            <div id="left" class="col-md-2 col-sm-3">
                <form>
                <div class="form-group">
                    <label for="f">Fuente</label>
                    <select id="f" class="form-control">
                        <option value="">Seleccione alguna...</option>
                        <option value="cronica_del_quindio">Cr&oacute;nica del Quind&iacute;o</option>
                        <option value="diario_del_huila">Diario del Huila</option>
                        <option value="diario_del_sur">Diario del Sur</option>
                        <option value="ejercito">Ej&eacute;rcito</option>
                        <option value="el_colombiano">El Colombiano</option>
                        <option value="el_heraldo">El Heraldo</option>
                        <option value="el_nuevo_dia">El Nuevo D&iacute;a</option>
                        <option value="el_nuevo_siglo">El Nuevo Siglo</option>
                        <option value="el_pais">El Pa&iacute;s</option>
                        <option value="hsb_noticias">HSB Noticias</option>
                        <option value="la_patria">La Patria</option>
                        <option value="la_tarde">La Tarde</option>
                        <option value="prensa_libre_casanare">Prensa Libre Casanare</option>
                        <option value="rcn_radio">RCN Radio</option>
                        <option value="vanguardia_liberal">Vanguardia Liberal</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="d">Fecha monitoreo</label>
                    <select id="d" class="form-control">
                        <option value="<?php echo date('Y-m-d') ?>"><?php echo date('Y-m-d') ?></option>
                        <?php
                        $fechas = array_reverse(array_diff(scandir(realpath('json')), array('.', '..')));
                        foreach($fechas as $_df) {
                            if (is_dir('json/'.$_df)) {
                                echo '<option>'.$_df.'</option>';
                            }
                        }
                        ?>
                    </select>
                </div>
                <div class="form-group">
                    <button type="button" onclick="doIt()" class="btn btn-primary btn-block">Listar noticias</button>
                </div>
                </form>
            </div>
            <div class="col-md-10 col-sm-9">
            <div id="total"></div>
            <table id="data" class="table table-striped" cellspacing="0" width="100%" >
                <thead>
                    <th>T&iacute;tulo</th>
                    <th>Descripci&oacute;n</th>
                    <th>Keywords</th>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div class="jumbotron">
                              <h2><i class="fa fa-pagelines"></i> Bienvenido al monitoreo de medios de UMAIC</h2>
                                <p>&nbsp;</p>
                                <blockquote>
                                    <p>Un hombre no trata de verse en el agua que corre, sino en el agua tranquila, porque
                                    solamente lo que en s&iacute; es tranquilo puede dar tranquilidad a otros -- Confucio</p>
                                </blockquote>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
            </div>
        </div>
    </div>
    </div>
</body>
</html>
