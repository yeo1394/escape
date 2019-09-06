package yeoinsu.escape.question.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import yeoinsu.escape.question.domain.Page;
import yeoinsu.escape.question.domain.Question;
import yeoinsu.escape.question.service.PageServiceImpl;
import yeoinsu.escape.question.service.QuestionService;

@Controller
@RequestMapping("/page")
public class PageController {
	@Autowired QuestionService questionService;
	
	@RequestMapping("/list")
	@ResponseBody
	public List<Question> getquestion(HttpServletRequest request,Integer pageCnt,
			HttpSession session) {
		Page page = new Page(pageCnt);
		Question question = questionService.getpage();
		PageServiceImpl pageServiceImpl = new PageServiceImpl(5,question.getPage(),page);
		request.setAttribute("pageMaker", pageServiceImpl);
		return questionService.questionlist(page);
	}
	
	@RequestMapping("/paging")
	@ResponseBody
	public PageServiceImpl getPaging(HttpServletRequest request,Integer pageCnt,
			HttpSession session) {
		Page page = new Page(pageCnt);
		Question question = questionService.getpage();
		PageServiceImpl pageServiceImpl = new PageServiceImpl(5,question.getPage(),page);
		request.setAttribute("pageMaker", pageServiceImpl);
		System.out.println(pageServiceImpl.getPage().getCurrentPage());
		return pageServiceImpl;
	}
}