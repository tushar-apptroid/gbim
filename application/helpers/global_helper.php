<?php

function vd(&$a)
{
    echo '<pre>';
    var_dump($a);
    echo '</pre>';
}

function pr(&$a)
{
    echo '<pre>';
    print_r($a);
    echo '</pre>';
}

function commanCurlRequest($url = null,$request_type='POST',$request = null)
{
	if(empty($url))
		return;
	
    if (filter_var($url, FILTER_VALIDATE_URL))
    {
        $ch = curl_init( $url );
        curl_setopt( $ch, CURLOPT_POST, 1 );
        curl_setopt( $ch, CURLOPT_POSTFIELDS, $request );
		curl_setopt( $ch, CURLOPT_HTTPHEADER,  ["Authorization: Token ".SErankking_API_Key]);
        curl_setopt( $ch, CURLOPT_RETURNTRANSFER, 1 );
        curl_setopt( $ch, CURLOPT_TIMEOUT, 120 );
        curl_setopt( $ch, CURLOPT_CONNECTTIMEOUT, 120 );
        curl_setopt( $ch, CURLOPT_CUSTOMREQUEST, $request_type);
		curl_setopt ($ch, CURLOPT_SSL_VERIFYHOST, 0);
		curl_setopt ($ch, CURLOPT_SSL_VERIFYPEER, 0);
		curl_setopt($ch, CURLOPT_FOLLOWLOCATION,true);
		
        $response = curl_exec($ch);
		$httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
		$curl_getinfo = curl_getinfo($ch);
        $err = curl_error($ch);
        curl_close($ch);
		if ($err) {
            $return['status']  = false;
            $return['message'] = $err;
			$return['httpcode'] = $httpcode;
            return json_encode($return);
        }
        else
        {
			$response = json_decode($response);
            return json_encode($response);
        }
    }
    else
    {
        $return['status']  = false;
        $return['message'] = 'URL or request is not validate';
        return $return;
    }
    
}