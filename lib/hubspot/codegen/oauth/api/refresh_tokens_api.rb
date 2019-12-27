=begin
#OAuthService

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module Hubspot
  module Client
    module OAuth
      module Api
        class RefreshTokensApi
          attr_accessor :api_client

          def initialize(api_client = ApiClient.default)
            @api_client = api_client
          end
          # Auth Level: none ([Docs](https://product.hubteam.com/docs/appsystems/auth-and-rest/auth-levels.html)) [Source Code](https://private.hubteam.com/opengrok/search?project=all&path=RefreshTokensResource%20OR%20Object&defs=deleteRefreshToken)&nbsp;|&nbsp;[API Goggles](https://tools.hubteam.com/api/delete/api.hubapi.com%2Foauth%2Fv1%2Frefresh-tokens%2F%28%28%7Btoken%7D%29%29?showRequestDetails=true)&nbsp;|&nbsp;<a href='#operations-Refresh_Tokens-delete-%2Foauth%2Fv1%2Frefresh-tokens%2F%7Btoken%7D'>Permalink</a>
          # @param token 
          # @param [Hash] opts the optional parameters
          # @return [Error]
          def deleteoauthv1refresh_tokenstoken(token, opts = {})
            data, _status_code, _headers = deleteoauthv1refresh_tokenstoken_with_http_info(token, opts)
            data
          end

          # Auth Level: none ([Docs](https://product.hubteam.com/docs/appsystems/auth-and-rest/auth-levels.html)) [Source Code](https://private.hubteam.com/opengrok/search?project&#x3D;all&amp;path&#x3D;RefreshTokensResource%20OR%20Object&amp;defs&#x3D;deleteRefreshToken)&amp;nbsp;|&amp;nbsp;[API Goggles](https://tools.hubteam.com/api/delete/api.hubapi.com%2Foauth%2Fv1%2Frefresh-tokens%2F%28%28%7Btoken%7D%29%29?showRequestDetails&#x3D;true)&amp;nbsp;|&amp;nbsp;&lt;a href&#x3D;&#39;#operations-Refresh_Tokens-delete-%2Foauth%2Fv1%2Frefresh-tokens%2F%7Btoken%7D&#39;&gt;Permalink&lt;/a&gt;
          # @param token 
          # @param [Hash] opts the optional parameters
          # @return [Array<(Error, Fixnum, Hash)>] Error data, response status code and response headers
          def deleteoauthv1refresh_tokenstoken_with_http_info(token, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: RefreshTokensApi.deleteoauthv1refresh_tokenstoken ...'
            end
            # verify the required parameter 'token' is set
            if @api_client.config.client_side_validation && token.nil?
              fail ArgumentError, "Missing the required parameter 'token' when calling RefreshTokensApi.deleteoauthv1refresh_tokenstoken"
            end
            # resource path
            local_var_path = '/v1/refresh-tokens/{token}'.sub('{' + 'token' + '}', token.to_s)

            # query parameters
            query_params = {}

            # header parameters
            header_params = {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['*/*'])

            # form parameters
            form_params = {}

            # http body (model)
            post_body = nil
            auth_names = []
            data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => 'Error')
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: RefreshTokensApi#deleteoauthv1refresh_tokenstoken\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # Auth Level: none ([Docs](https://product.hubteam.com/docs/appsystems/auth-and-rest/auth-levels.html)) [Source Code](https://private.hubteam.com/opengrok/search?project=all&path=RefreshTokensResource%20OR%20Object&defs=getRefreshTokenInfo)&nbsp;|&nbsp;[API Goggles](https://tools.hubteam.com/api/get/api.hubapi.com%2Foauth%2Fv1%2Frefresh-tokens%2Fhubs%2F%28%28%7BhubId%7D%29%29%2Fclients%2F%28%28%7BclientId%7D%29%29?showRequestDetails=true)&nbsp;|&nbsp;<a href='#operations-Refresh_Tokens-get-%2Foauth%2Fv1%2Frefresh-tokens%2Fhubs%2F%7BhubId%7D%2Fclients%2F%7BclientId%7D'>Permalink</a>
          # @param hub_id 
          # @param client_id 
          # @param [Hash] opts the optional parameters
          # @return [Array<RefreshToken>]
          def getoauthv1refresh_tokenshubshub_idclientsclient_id(hub_id, client_id, opts = {})
            data, _status_code, _headers = getoauthv1refresh_tokenshubshub_idclientsclient_id_with_http_info(hub_id, client_id, opts)
            data
          end

          # Auth Level: none ([Docs](https://product.hubteam.com/docs/appsystems/auth-and-rest/auth-levels.html)) [Source Code](https://private.hubteam.com/opengrok/search?project&#x3D;all&amp;path&#x3D;RefreshTokensResource%20OR%20Object&amp;defs&#x3D;getRefreshTokenInfo)&amp;nbsp;|&amp;nbsp;[API Goggles](https://tools.hubteam.com/api/get/api.hubapi.com%2Foauth%2Fv1%2Frefresh-tokens%2Fhubs%2F%28%28%7BhubId%7D%29%29%2Fclients%2F%28%28%7BclientId%7D%29%29?showRequestDetails&#x3D;true)&amp;nbsp;|&amp;nbsp;&lt;a href&#x3D;&#39;#operations-Refresh_Tokens-get-%2Foauth%2Fv1%2Frefresh-tokens%2Fhubs%2F%7BhubId%7D%2Fclients%2F%7BclientId%7D&#39;&gt;Permalink&lt;/a&gt;
          # @param hub_id 
          # @param client_id 
          # @param [Hash] opts the optional parameters
          # @return [Array<(Array<RefreshToken>, Fixnum, Hash)>] Array<RefreshToken> data, response status code and response headers
          def getoauthv1refresh_tokenshubshub_idclientsclient_id_with_http_info(hub_id, client_id, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: RefreshTokensApi.getoauthv1refresh_tokenshubshub_idclientsclient_id ...'
            end
            # verify the required parameter 'hub_id' is set
            if @api_client.config.client_side_validation && hub_id.nil?
              fail ArgumentError, "Missing the required parameter 'hub_id' when calling RefreshTokensApi.getoauthv1refresh_tokenshubshub_idclientsclient_id"
            end
            # verify the required parameter 'client_id' is set
            if @api_client.config.client_side_validation && client_id.nil?
              fail ArgumentError, "Missing the required parameter 'client_id' when calling RefreshTokensApi.getoauthv1refresh_tokenshubshub_idclientsclient_id"
            end
            # resource path
            local_var_path = '/v1/refresh-tokens/hubs/{hubId}/clients/{clientId}'.sub('{' + 'hubId' + '}', hub_id.to_s).sub('{' + 'clientId' + '}', client_id.to_s)

            # query parameters
            query_params = {}

            # header parameters
            header_params = {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

            # form parameters
            form_params = {}

            # http body (model)
            post_body = nil
            auth_names = []
            data, status_code, headers = @api_client.call_api(:GET, local_var_path,
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => 'Array<RefreshToken>')
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: RefreshTokensApi#getoauthv1refresh_tokenshubshub_idclientsclient_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # Auth Level: none ([Docs](https://product.hubteam.com/docs/appsystems/auth-and-rest/auth-levels.html)) [Source Code](https://private.hubteam.com/opengrok/search?project=all&path=RefreshTokensResource%20OR%20Object&defs=getTokenAuditsByHubAndClient)&nbsp;|&nbsp;[API Goggles](https://tools.hubteam.com/api/get/api.hubapi.com%2Foauth%2Fv1%2Frefresh-tokens%2Fhubs%2F%28%28%7BhubId%7D%29%29%2Fclients%2F%28%28%7BclientId%7D%29%29%2Faudits?showRequestDetails=true)&nbsp;|&nbsp;<a href='#operations-Refresh_Tokens-get-%2Foauth%2Fv1%2Frefresh-tokens%2Fhubs%2F%7BhubId%7D%2Fclients%2F%7BclientId%7D%2Faudits'>Permalink</a>
          # @param hub_id 
          # @param client_id 
          # @param [Hash] opts the optional parameters
          # @return [Array<JsonNode>]
          def getoauthv1refresh_tokenshubshub_idclientsclient_idaudits(hub_id, client_id, opts = {})
            data, _status_code, _headers = getoauthv1refresh_tokenshubshub_idclientsclient_idaudits_with_http_info(hub_id, client_id, opts)
            data
          end

          # Auth Level: none ([Docs](https://product.hubteam.com/docs/appsystems/auth-and-rest/auth-levels.html)) [Source Code](https://private.hubteam.com/opengrok/search?project&#x3D;all&amp;path&#x3D;RefreshTokensResource%20OR%20Object&amp;defs&#x3D;getTokenAuditsByHubAndClient)&amp;nbsp;|&amp;nbsp;[API Goggles](https://tools.hubteam.com/api/get/api.hubapi.com%2Foauth%2Fv1%2Frefresh-tokens%2Fhubs%2F%28%28%7BhubId%7D%29%29%2Fclients%2F%28%28%7BclientId%7D%29%29%2Faudits?showRequestDetails&#x3D;true)&amp;nbsp;|&amp;nbsp;&lt;a href&#x3D;&#39;#operations-Refresh_Tokens-get-%2Foauth%2Fv1%2Frefresh-tokens%2Fhubs%2F%7BhubId%7D%2Fclients%2F%7BclientId%7D%2Faudits&#39;&gt;Permalink&lt;/a&gt;
          # @param hub_id 
          # @param client_id 
          # @param [Hash] opts the optional parameters
          # @return [Array<(Array<JsonNode>, Fixnum, Hash)>] Array<JsonNode> data, response status code and response headers
          def getoauthv1refresh_tokenshubshub_idclientsclient_idaudits_with_http_info(hub_id, client_id, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: RefreshTokensApi.getoauthv1refresh_tokenshubshub_idclientsclient_idaudits ...'
            end
            # verify the required parameter 'hub_id' is set
            if @api_client.config.client_side_validation && hub_id.nil?
              fail ArgumentError, "Missing the required parameter 'hub_id' when calling RefreshTokensApi.getoauthv1refresh_tokenshubshub_idclientsclient_idaudits"
            end
            # verify the required parameter 'client_id' is set
            if @api_client.config.client_side_validation && client_id.nil?
              fail ArgumentError, "Missing the required parameter 'client_id' when calling RefreshTokensApi.getoauthv1refresh_tokenshubshub_idclientsclient_idaudits"
            end
            # resource path
            local_var_path = '/v1/refresh-tokens/hubs/{hubId}/clients/{clientId}/audits'.sub('{' + 'hubId' + '}', hub_id.to_s).sub('{' + 'clientId' + '}', client_id.to_s)

            # query parameters
            query_params = {}

            # header parameters
            header_params = {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

            # form parameters
            form_params = {}

            # http body (model)
            post_body = nil
            auth_names = []
            data, status_code, headers = @api_client.call_api(:GET, local_var_path,
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => 'Array<JsonNode>')
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: RefreshTokensApi#getoauthv1refresh_tokenshubshub_idclientsclient_idaudits\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # Auth Level: none ([Docs](https://product.hubteam.com/docs/appsystems/auth-and-rest/auth-levels.html)) [Source Code](https://private.hubteam.com/opengrok/search?project=all&path=RefreshTokensResource%20OR%20Object&defs=requestRefreshTokenInfo)&nbsp;|&nbsp;[API Goggles](https://tools.hubteam.com/api/get/api.hubapi.com%2Foauth%2Fv1%2Frefresh-tokens%2F%28%28%7Btoken%7D%29%29?showRequestDetails=true)&nbsp;|&nbsp;<a href='#operations-Refresh_Tokens-get-%2Foauth%2Fv1%2Frefresh-tokens%2F%7Btoken%7D'>Permalink</a>
          # @param token 
          # @param [Hash] opts the optional parameters
          # @return [RefreshTokenInfoResponse]
          def getoauthv1refresh_tokenstoken(token, opts = {})
            data, _status_code, _headers = getoauthv1refresh_tokenstoken_with_http_info(token, opts)
            data
          end

          # Auth Level: none ([Docs](https://product.hubteam.com/docs/appsystems/auth-and-rest/auth-levels.html)) [Source Code](https://private.hubteam.com/opengrok/search?project&#x3D;all&amp;path&#x3D;RefreshTokensResource%20OR%20Object&amp;defs&#x3D;requestRefreshTokenInfo)&amp;nbsp;|&amp;nbsp;[API Goggles](https://tools.hubteam.com/api/get/api.hubapi.com%2Foauth%2Fv1%2Frefresh-tokens%2F%28%28%7Btoken%7D%29%29?showRequestDetails&#x3D;true)&amp;nbsp;|&amp;nbsp;&lt;a href&#x3D;&#39;#operations-Refresh_Tokens-get-%2Foauth%2Fv1%2Frefresh-tokens%2F%7Btoken%7D&#39;&gt;Permalink&lt;/a&gt;
          # @param token 
          # @param [Hash] opts the optional parameters
          # @return [Array<(RefreshTokenInfoResponse, Fixnum, Hash)>] RefreshTokenInfoResponse data, response status code and response headers
          def getoauthv1refresh_tokenstoken_with_http_info(token, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: RefreshTokensApi.getoauthv1refresh_tokenstoken ...'
            end
            # verify the required parameter 'token' is set
            if @api_client.config.client_side_validation && token.nil?
              fail ArgumentError, "Missing the required parameter 'token' when calling RefreshTokensApi.getoauthv1refresh_tokenstoken"
            end
            # resource path
            local_var_path = '/v1/refresh-tokens/{token}'.sub('{' + 'token' + '}', token.to_s)

            # query parameters
            query_params = {}

            # header parameters
            header_params = {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

            # form parameters
            form_params = {}

            # http body (model)
            post_body = nil
            auth_names = []
            data, status_code, headers = @api_client.call_api(:GET, local_var_path,
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => 'RefreshTokenInfoResponse')
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: RefreshTokensApi#getoauthv1refresh_tokenstoken\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # Auth Level: none ([Docs](https://product.hubteam.com/docs/appsystems/auth-and-rest/auth-levels.html)) [Source Code](https://private.hubteam.com/opengrok/search?project=all&path=RefreshTokensResource%20OR%20Object&defs=getTokenAudits)&nbsp;|&nbsp;[API Goggles](https://tools.hubteam.com/api/get/api.hubapi.com%2Foauth%2Fv1%2Frefresh-tokens%2F%28%28%7Btoken%7D%29%29%2Faudits?showRequestDetails=true)&nbsp;|&nbsp;<a href='#operations-Refresh_Tokens-get-%2Foauth%2Fv1%2Frefresh-tokens%2F%7Btoken%7D%2Faudits'>Permalink</a>
          # @param token 
          # @param [Hash] opts the optional parameters
          # @return [Array<JsonNode>]
          def getoauthv1refresh_tokenstokenaudits(token, opts = {})
            data, _status_code, _headers = getoauthv1refresh_tokenstokenaudits_with_http_info(token, opts)
            data
          end

          # Auth Level: none ([Docs](https://product.hubteam.com/docs/appsystems/auth-and-rest/auth-levels.html)) [Source Code](https://private.hubteam.com/opengrok/search?project&#x3D;all&amp;path&#x3D;RefreshTokensResource%20OR%20Object&amp;defs&#x3D;getTokenAudits)&amp;nbsp;|&amp;nbsp;[API Goggles](https://tools.hubteam.com/api/get/api.hubapi.com%2Foauth%2Fv1%2Frefresh-tokens%2F%28%28%7Btoken%7D%29%29%2Faudits?showRequestDetails&#x3D;true)&amp;nbsp;|&amp;nbsp;&lt;a href&#x3D;&#39;#operations-Refresh_Tokens-get-%2Foauth%2Fv1%2Frefresh-tokens%2F%7Btoken%7D%2Faudits&#39;&gt;Permalink&lt;/a&gt;
          # @param token 
          # @param [Hash] opts the optional parameters
          # @return [Array<(Array<JsonNode>, Fixnum, Hash)>] Array<JsonNode> data, response status code and response headers
          def getoauthv1refresh_tokenstokenaudits_with_http_info(token, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: RefreshTokensApi.getoauthv1refresh_tokenstokenaudits ...'
            end
            # verify the required parameter 'token' is set
            if @api_client.config.client_side_validation && token.nil?
              fail ArgumentError, "Missing the required parameter 'token' when calling RefreshTokensApi.getoauthv1refresh_tokenstokenaudits"
            end
            # resource path
            local_var_path = '/v1/refresh-tokens/{token}/audits'.sub('{' + 'token' + '}', token.to_s)

            # query parameters
            query_params = {}

            # header parameters
            header_params = {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

            # form parameters
            form_params = {}

            # http body (model)
            post_body = nil
            auth_names = []
            data, status_code, headers = @api_client.call_api(:GET, local_var_path,
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => 'Array<JsonNode>')
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: RefreshTokensApi#getoauthv1refresh_tokenstokenaudits\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

        end
      end
    end
  end
end