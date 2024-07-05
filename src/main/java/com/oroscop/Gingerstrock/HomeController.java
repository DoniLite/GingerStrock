package com.oroscop.Gingerstrock;

import java.util.concurrent.atomic.AtomicLong;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {
    private static final String template = "Hello, %s!";
    private final AtomicLong counter = new AtomicLong();

    @GetMapping("/")
    public Data index(@RequestParam(value = "name", defaultValue = "World") String name) {
        return new Data(counter.incrementAndGet(), String.format(template, name));
    }
}
