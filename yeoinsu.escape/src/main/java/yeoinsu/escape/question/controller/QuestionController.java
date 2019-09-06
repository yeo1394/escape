package yeoinsu.escape.question.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import yeoinsu.escape.party.domain.PartyComment;
import yeoinsu.escape.question.domain.Page;
import yeoinsu.escape.question.domain.Question;
import yeoinsu.escape.question.domain.QuestionComment;
import yeoinsu.escape.question.service.PageServiceImpl;
import yeoinsu.escape.question.service.QuestionComService;
import yeoinsu.escape.question.service.QuestionService;
import yeoinsu.escape.user.login.domain.User;

@Controller
@RequestMapping("/question")
public class QuestionController {
	@Autowired QuestionService questionService;
	@Autowired QuestionComService questionComService;
	
		
	@RequestMapping
	public String board(HttpServletRequest request,HttpSession session) {
		PageServiceImpl pageService = (PageServiceImpl)session.getAttribute("pageMaker");
		if(pageService == null) {
			Page page = new Page();
			Question question = questionService.getpage();
			PageServiceImpl pageServiceImpl = new PageServiceImpl(5,question.getPage(),page);
			System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
			System.out.println(question.getPage());
			request.setAttribute("pageMaker", pageServiceImpl);
			request.setAttribute("posts", questionService.questionlist(page));
		}else {
			Page page = pageService.getPage();
			request.setAttribute("pageMaker", pageService);
			request.setAttribute("posts", questionService.questionlist(page));
		};
		return "/question/question_board";
	}
	
	@RequestMapping("/in")
	public String Content(HttpServletRequest request,int pageCnt) {
		System.out.println(pageCnt);
		request.setAttribute("Content",questionService.getquestion(pageCnt));
		questionService.updateViewCnt(pageCnt);
		request.setAttribute("Comment",questionComService.getCom(pageCnt));
		return "/question/question_view";
	}
	
	@RequestMapping("/add")
	public String Add(){
		return "/question/question_add";
	}
	
	@RequestMapping(value="/join", method = {RequestMethod.GET, RequestMethod.POST})
	public String Join(String queTitle,String queContent,String queWriter, HttpSession session) {
		User user = (User)session.getAttribute("nowUser");
		String userId = user.getUserId();
		Question question = new Question(queTitle,queContent,queWriter,userId);
		questionService.questionadd(question);
		return "redirect:/question";
	}
	
	@RequestMapping(value="/updateIn",  method = RequestMethod.POST)
	public String UpdateIn(String queTitle,String queContent, HttpSession session, int queNo) {
		User user = (User)session.getAttribute("nowUser");
		String userId = user.getUserId();
		Question question = new Question(queTitle,queContent,userId);
		question.setQueNo(queNo);
		questionService.questionupdate(question);
		return "redirect:/question";
	}
	
	@RequestMapping("/update")
	public String Update(int queNo,HttpServletRequest request) {
		request.setAttribute("question", questionService.getquestion(queNo));
		return "/question/question_update";
	}
	
	@RequestMapping("/delete")
	public String Delete(int queNo) {
		questionService.questiondelete(queNo);
		return "redirect:/question";
	}
	
	@RequestMapping("/com")
	@ResponseBody
	public List<QuestionComment> Com(HttpSession session,int queNo,String queComContent) {
		System.out.println(queComContent);
		User user = (User)session.getAttribute("nowUser");
		String userId = user.getUserId();
		QuestionComment queCom = new QuestionComment(queNo,queComContent,userId);
		if(!queComContent.equals("")){
			questionComService.addCom(queCom);			
		}
		return questionComService.getCom(queNo);
	}

}
