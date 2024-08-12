package com.parimal.Deployk8s;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    @GetMapping("/")
    public String hello() {
        return "<h1>Welcome to My Simple Java SpringBoot App!</h1><p>This app is used to practice build and deployment with Jenkins, Kubernetes, and Ansible.</p>";
    }

}
