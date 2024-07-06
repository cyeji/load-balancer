package com.yeji.loadbalancer;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RequiredArgsConstructor
@RestController
public class CountController {

    private final SpringProfiles springProfiles;

    private int count;

    @GetMapping
    public ResponseEntity<String> count() {
        StringBuilder response = new StringBuilder();
        response.append("serverName : ").append(springProfiles.getServerName()).append("\n");
        response.append("visiting Count : ").append(count++);

        return ResponseEntity.ok(response.toString());
    }

}
