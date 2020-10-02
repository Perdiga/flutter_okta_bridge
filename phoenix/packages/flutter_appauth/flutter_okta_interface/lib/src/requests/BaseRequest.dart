class BaseRequest {
  /// The client id.
  String clientId;

  /// The URL of where the discovery document can be found.
  String discoveryUrl;

  /// The redirect URL when session ended.
  String endSessionRedirectUri;

  /// The redirect URL.
  String redirectUrl;

  /// The request scopes.
  List<String> scopes;

  String userAgentTemplate;

  bool requireHardwareBackedKeyStore;
}

Map<String, Object> convertBaseRequestToMap(BaseRequest baseRequest) {
  return <String, Object>{
    'clientId': baseRequest.clientId,
    'discoveryUrl': baseRequest.discoveryUrl,
    'endSessionRedirectUri': baseRequest.endSessionRedirectUri,
    'redirectUrl': baseRequest.redirectUrl,
    'scopes': baseRequest.scopes,
    'userAgentTemplate': baseRequest.userAgentTemplate,
    'requireHardwareBackedKeyStore': baseRequest.requireHardwareBackedKeyStore,
  };
}
