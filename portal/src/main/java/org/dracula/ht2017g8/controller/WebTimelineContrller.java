package org.dracula.ht2017g8.controller;

import org.dracula.ht2017g8.bo.CommonBO;
import org.dracula.ht2017g8.bo.ReturnCodeAndMsg;
import org.dracula.ht2017g8.bo.WebTimelineBO;
import org.dracula.ht2017g8.service.WebTimelineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * @author dk
 */
@RestController
public class WebTimelineContrller {

    @Autowired
    private WebTimelineService webTimelineService;

    @RequestMapping(value="/web_timeline/{custId}", method= RequestMethod.GET)
    public CommonBO<Map<String, List<WebTimelineBO>>> getByCustId(@PathVariable("custId") String custId){
        CommonBO<Map<String, List<WebTimelineBO>>> webTimelineBOCommonBO = webTimelineService.getByCustId(custId);
        if(webTimelineBOCommonBO !=null){
            return webTimelineBOCommonBO;
        }else{
            webTimelineBOCommonBO.setCodeAndMsg(ReturnCodeAndMsg.FAIL_00002);
            return webTimelineBOCommonBO;
        }
    }

}
