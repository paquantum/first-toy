package first.toy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.UUID;

@Controller
public class TestController {

    public static final UUID uid = UUID.randomUUID();

    @RequestMapping("/test")
    @ResponseBody
    public String test() {
        return uid.toString();
    }
}