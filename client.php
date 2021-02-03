
<?php

class client
{
    public function __construct()
    {

        $this->instance = new SoapClient(null, array(
            'uri' => 'http://localhost/soap/',
            'location' => 'http://localhost/soap/server.php'
        ));

        // set the header
        // https://www.php.net/manual/en/reserved.classes.php
        $auth_params = new stdClass();
        $auth_params->username = 'ies';
        $auth_params->password = 'daw';

        // https://www.php.net/manual/en/soapheader.soapheader
        // https://www.php.net/manual/en/soapvar.soapvar.php

        $header_params = new SoapVar($auth_params, SOAP_ENC_OBJECT);
        $header = new SoapHeader('http://localhost/soap/', 'authenticate', $header_params, false);
        $this->instance->__setSoapHeaders(array($header));

    }

    public function getMarcas() {
        return $this->instance->ObtenerMarcasUrl();
        //return $this->instance->__soapCall('ObtenerMarcas');
    }
    public function getModelos($marca) {
        return $this->instance->ObtenerModelosPorMarcas($marca);
        //return $this->instance->__soapCall('ObtenerMarcas');
    }
    public function getUrlVideo($marca) {
        return $this->instance->ObtenerUrlVideo($marca);
        //return $this->instance->__soapCall('ObtenerMarcas');
    }

}
$client = new client();
