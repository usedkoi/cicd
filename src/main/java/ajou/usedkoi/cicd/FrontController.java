package ajou.usedkoi.cicd;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
public class FrontController {
    @RequestMapping("/")
    public Map<String, Object> index() {
        Map<String, Object> model = new HashMap<String, Object>();

        model.put("result", "success");

        return model;
    }
}

