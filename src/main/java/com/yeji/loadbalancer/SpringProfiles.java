package com.yeji.loadbalancer;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties("spring")
@Getter @Setter
class SpringProfiles {

    private String serverName;

}
