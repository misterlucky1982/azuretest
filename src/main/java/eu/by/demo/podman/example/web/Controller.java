package eu.by.demo.podman.example.web;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("test")
public class Controller {
    @GetMapping("/{name}")
    public String getBook(@PathVariable String name) {
        return "Hello, " + name + "!";
    }
}
