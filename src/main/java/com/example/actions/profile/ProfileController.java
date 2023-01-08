package com.example.actions.profile;

import lombok.RequiredArgsConstructor;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
@RequiredArgsConstructor
public class ProfileController {
    private final Environment env;

    @GetMapping("/profile")
    public String profile() {
        List<String> profiles = Arrays.asList(env.getActiveProfiles()); // 활성화된 application.yml
        List<String> springProfiles = Arrays.asList("spring1", "spring2");

        return profiles.stream().filter(springProfiles::contains).findAny().orElse("spring1");
    }
}
