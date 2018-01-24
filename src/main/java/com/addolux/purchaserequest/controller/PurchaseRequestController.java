package com.addolux.purchaserequest.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.xml.ws.Response;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ValidationUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.addolux.purchaserequest.PurchaseRequestService;
import com.addolux.purchaserequest.dto.JsonResponse;
import com.addolux.purchaserequest.dto.User;

@Controller
@RequestMapping("/purchase-request")
public class PurchaseRequestController {

	//private static final String MY_REQUESTS_VIEW = "myRequests";
	private static final String MY_REQUESTS_VIEW = "Apontamento";
	private static final String MY_REQUESTS_MODEL_ATTRIBUTE = "myRequestList";
    private List<User> userList = new ArrayList<User>();


	@Resource
	private PurchaseRequestService purchaseRequestService;

	@RequestMapping(value = "/myRequests", method = RequestMethod.GET)
	public String getMyRequests(Model model) {
		model.addAttribute(MY_REQUESTS_MODEL_ATTRIBUTE, purchaseRequestService.getAllPurchaseRequests());
		return MY_REQUESTS_VIEW;
	}

/*	@RequestMapping(value = "/AddUser.htm", method = RequestMethod.POST)
	public @ResponseBody JsonResponse addUser(@ModelAttribute(value = "user") User user, BindingResult result) {
		JsonResponse res = new JsonResponse();
		ValidationUtils.rejectIfEmpty(result, "name", "Name can not be empty.");
		ValidationUtils.rejectIfEmpty(result, "education", "Educatioan not be empty");
		if (!result.hasErrors()) {

			userList.add(user);

			res.setStatus("SUCCESS");
			res.setResult(userList);
		} else {
			res.setStatus("FAIL");
			res.setResult(result.getAllErrors());
		}
		return res;

	}
*/	
	
	@RequestMapping(value = "/getAjaxResponse.htm", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody String processAJAXRequest(
                  @RequestParam("productId") String productId) {
/*                @RequestParam("productId") String productId, @RequestParam("name") String Name, @RequestParam("education") String Education ) {
*/        String response;
//        System.out.println(Name);
//        System.out.println(Education);
               Long prodId=Long.parseLong(productId);
         response= "10";
        return response;
}
}
