Do{
$var = Read-Host 'Would you like to encode or decode? Or type quit to exit.'
    if ($var -eq 'encode')
        {$text = Read-Host 'Enter the text that you would like to encode'
        [System.Convert]::ToBase64String([System.Text.Encoding]::UNICODE.GetBytes($text))}
    elseif($var -eq 'decode')
        {$encoded_text = Read-Host 'Enter the encoded text that you would like to decode'
        [System.Text.Encoding]::UNICODE.GetString([System.Convert]::FromBase64String($encoded_text))}
    else{Write-host 'Please enter either encode or decode.'}
}Until($var -eq 'quit')  