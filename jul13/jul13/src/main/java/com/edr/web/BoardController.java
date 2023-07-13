package com.edr.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	
	//서비스와 연결하기
	@Autowired
	private BoardService boardService;
	
	//사용자가 /board라고 호출하면 동작할 메소드를 만들겠습니다.
	
	//ctrl + shift + o import문들 정리
	
	@GetMapping("/board")
	public ModelAndView board() {
		
		ModelAndView mv = new ModelAndView("board"); //jsp파일명
		/*mv.addObject("name","황선우"); //앞에는 키, 뒤에는 값
		
		List<BoardDTO> list = new ArrayList<BoardDTO>();
		for (int i = 1; i <= 10; i++) {
			BoardDTO e = new BoardDTO(i, i + "번째 글 입니다", "황선우", "2023-07-" + i, i*10);
			//e.setBno(i);
			//e.setBtitle(i + "번째 글 입니다.");
			//e.setBwrite("황선우");
			//e.setBdate("2023-07-" + i);
			//e.setBlike(i * 10);
			list.add(e);
		}
		
		mv.addObject("list", list);
		
		List<Map<String, Object>> list2 = new ArrayList<Map<String, Object>>();
		
		for (int i = 1; i <= 10; i++) {
			
			Map<String, Object> e = new HashMap<String,Object>();
			e.put("bno", i);
			e.put("btitle", i + "번째 글 입니다.");
			e.put("bwrite", "황선우");
			e.put("bdate", "2023-07-13" + i);
			e.put("blike", i * 20);
			list2.add(e);
			
		}
		
		mv.addObject("list2", list2);*/
		
		//서비스에게 일 시킵니다.
		List<BoardDTO> list = boardService.boardList();
		
		mv.addObject("list", list);
		
		return mv; 
		
	}
	
	@GetMapping("/board2")
	public String board2(Model model) {
		
		model.addAttribute("name", "황선우");
		
		List<BoardDTO> list = new ArrayList<>();
		
		for (int i = 1; i <= 10; i++) {
			
			BoardDTO dto = new BoardDTO(i, "제목입니다.", "황선우", "2023-07-13", i * 7);
			list.add(dto);	
		}
		model.addAttribute("list", list);
		return "board2";
		
	}
	
}
