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
@RequestMapping("/apt")
public class ApontamentoController {

	private static final String MY_REQUESTS_VIEW = "index";
	private static final String MY_REQUESTS_MODEL_ATTRIBUTE = "myRequestList";


	@Resource
	private PurchaseRequestService purchaseRequestService;

	@RequestMapping(method = RequestMethod.GET)
	public String getMyRequests(Model model) {
		model.addAttribute(MY_REQUESTS_MODEL_ATTRIBUTE, purchaseRequestService.getAllPurchaseRequests());
		return MY_REQUESTS_VIEW;
	}

}
