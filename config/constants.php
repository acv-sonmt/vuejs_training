<?php
/**
 * Created by PhpStorm.
 * User: MSI
 * Date: 6/21/2018
 * Time: 10:26 AM
 */
class SDBStatusCode{
    const OK = 'OK';
    const DataNull = 'DataNull';
    const Excep = 'Excep';
    const ApiError = 'ApiError';
    const WebError = 'WebError';
    const ACLNotPass = 'ACLNotPass';
    const ApiAuthNotPass = 'ApiAuthNotPass';
    const PDOExceoption = 'PDOExceoption';
}
return [
    'from_validate_error_code'=>-9998,
    'exception_error_code'=>-9999,
    'success_code'=>0
];

class ApiConst{
    const ApiAccessTokenParamName='access_token';
    const ApiRefreshTokenParamName='refresh_token';
    const ApiModuleName='api';
}
class RoleConst{
    const PartyRole = 10;
    const PublicRole = 0;
    const SysAdminRole = 1;
}
