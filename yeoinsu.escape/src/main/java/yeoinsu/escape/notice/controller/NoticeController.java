package yeoinsu.escape.notice.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import yeoinsu.escape.notice.domain.Notice;
import yeoinsu.escape.notice.domain.PageNavigator;
import yeoinsu.escape.notice.service.NoticeService;
import yeoinsu.escape.user.login.domain.User;


@Controller
@RequestMapping("/notice")
public class NoticeController {
	@Autowired private NoticeService noticeService;
	
	final static int COUNTPERPAGE=5;
	
	@RequestMapping("/noticeWrite")
	public String noticeWrite(){
		return "/notice/noticeInsert";
	}
	
	@RequestMapping(value="/noticeInsert", method=RequestMethod.POST)
	public String noticeInsert(Notice notice){
		noticeService.insertNotice(notice);
		return "redirect:noticeList";
	}
	
	@RequestMapping("/noticeList")
	public String noticeList(HttpServletRequest request,HttpSession session,Model model,
					@RequestParam(value="page",defaultValue="1")int page){
		String open;
			if(session.getAttribute("nowUser")=="" || session.getAttribute("nowUser")==null){
				open = "1";
				System.out.println(open);
			}else{
				User user=(User)session.getAttribute("nowUser");
				open=user.getUserId();
			}
			PageNavigator navi = new PageNavigator(COUNTPERPAGE,page,
					noticeService.selectCount(open));
			model.addAttribute("list",noticeService.getAllNotices(navi, open));
			model.addAttribute("navi",navi);
		return "/notice/noticeList";
	}
	      

	@RequestMapping("/noticeDetails/{noticeNo}")
	public String noticeDetails(@PathVariable("noticeNo") int noticeNo, Model model){
		noticeService.updateHit(noticeNo);
		model.addAttribute("notice",noticeService.getNotice(noticeNo));
		return "notice/noticeDetails";
	}
	
	@RequestMapping("/updateNotice/{noticeNo}")
	public String updateNotice(@PathVariable("noticeNo") int noticeNo, Model model){
		model.addAttribute("notice", noticeService.getNotice(noticeNo));
		return "/notice/noticeUpdate";
	}
		
	@RequestMapping(value="/noticeUpdate", method=RequestMethod.POST)
	public String noticeUpdate(@RequestParam("noticeNo") int noticeNo, 
			@RequestParam("noticeTitle") String noticeTitle, 
			@RequestParam("noticeContent") String noticeContent, 
			@RequestParam("noticeOpen") String noticeOpen){
		
		Notice notice = new Notice();
		notice.setNoticeNo(noticeNo);
		notice.setNoticeTitle(noticeTitle);
		notice.setNoticeContent(noticeContent);
		notice.setNoticeOpen(noticeOpen);
		noticeService.updateNotice(notice);
		return "redirect:noticeList";
	}
	
	@RequestMapping(value="/deleteNotice", method=RequestMethod.POST)
	public String deleteNotice(int noticeNo){
		noticeService.deleteNotice(noticeNo);
		return "redirect:noticeList";
	}
}
	