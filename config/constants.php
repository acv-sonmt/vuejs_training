<?php

/**
 * Created by PhpStorm.
 * User: MSI
 * Date: 6/21/2018
 * Time: 10:26 AM
 */
class SDBStatusCode
{
    const OK = 'OK';
    const DataNull = 'DataNull';
    const Excep = 'Excep';
    const ApiError = 'ApiError';
    const WebError = 'WebError';
    const ACLNotPass = 'ACLNotPass';
    const ApiAuthNotPass = 'ApiAuthNotPass';
    const PDOExceoption = 'PDOExceoption';
    const ValidateError = 'ValidateError';
}
//Use for dev
return [
    'from_validate_error_code' => -9998,
    'exception_error_code' => -9999,
    'success_code' => 0
];

class ApiConst
{
    const ApiAccessTokenParamName = 'access_token';
    const ApiRefreshTokenParamName = 'refresh_token';
    const ApiModuleName = 'api';
}

class RoleConst
{
    const PartyRole = 10;
    const PublicRole = 0;
    const SysAdminRole = 1;
}

class UploadConst
{
    /*
     * Type image allow access
     */
    const FILE_IMAGE_UPLOAD_ACCESSED = 'png,jpg,jpeg,bmp,gif';
    const UPLOAD_IMAGE_MAX = '5120'; // 5MB
    const BACKEND_UPLOAD_IMAGE_PDF_MAX = '32768'; // 32MB
    const BACKEND_UPLOAD_IMAGE_MAX = '5120'; // 5MB
    const UPLOAD_VIDEO_MAX = '1048576'; // 1GB
    const BACKEND_UPLOAD_VIDEO_MAX = '512000'; // 500MB
}

class LoggingConst{
    const SQL_LOG_channel =  'sql_query';
}
