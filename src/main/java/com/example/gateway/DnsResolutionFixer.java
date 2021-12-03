package com.example.gateway;

import io.netty.resolver.DefaultAddressResolverGroup;
import org.springframework.cloud.gateway.config.HttpClientCustomizer;
import org.springframework.stereotype.Component;
import reactor.netty.http.client.HttpClient;


    @Component
    public class DnsResolutionFixer implements HttpClientCustomizer {
        @Override
        public HttpClient customize(HttpClient httpClient) {
            return httpClient.resolver(DefaultAddressResolverGroup.INSTANCE);
        }
    }
// 비동기어찌고 논블럭이찌고 저찌고


