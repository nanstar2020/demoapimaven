package demoapimaven.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {
    @RequestMapping("/getInfo")
    public String getInfo() {
        return "Demo API Version 1.0";
    }

    @RequestMapping("/testParams")
    public String testParams() {
        return "Test Params";
    }
}
