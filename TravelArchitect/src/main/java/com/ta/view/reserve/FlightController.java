package com.ta.view.reserve;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.ta.biz.flight.FlightService;
import com.ta.biz.flight.FlightVO;
import com.ta.biz.member.MemberVO;

@Controller
@SessionAttributes("reserve")
public class FlightController {

	@Autowired
	private FlightService flightService;


	@GetMapping(value = "airReserve")
	public String airReserve(FlightVO vo, Model model, String departureCity, String arrivalCity) {
		model.addAttribute("distinctSeatTypes", flightService.distinctSeatTypes());
		model.addAttribute("distinctDepartureCities", flightService.distinctDepartureCities());
		model.addAttribute("distinctArrivalCities", flightService.distinctArrivalCities(departureCity));
		if (vo.getDepartureCity() != null && vo.getArrivalCity() != null) {
			model.addAttribute("possibleDate", flightService.possibleDate(vo));
		}
		model.addAttribute("depart", departureCity);
		model.addAttribute("arrival", arrivalCity);
		return "flight/airReserve";
	}

	@GetMapping(value = "airSchedules")
	public String airShcedules(FlightVO vo, Model model,
			@SessionAttribute(value = "reserve", required = false) FlightVO session) {
		if (session == null) {
			// reserve session이 없을 경우
			model.addAttribute("reserve", vo);
		} else {
			if (vo.getDepartureCity() != null) {
				// 세션이 있고 departureCity가 있을 때 session에 vo 값을 set함
				session.setDepartureCity(vo.getDepartureCity());
				session.setArrivalCity(vo.getArrivalCity());
				session.setSeatType(vo.getSeatType());
				session.setDepartureDate(vo.getDepartureDate());
				model.addAttribute("reserve", session); // session 갱신
			} else if (vo.getAirline() != null || vo.getDepartureTime() != null) {
				// 항공사와 출발시간이 갖춰지면 session의값을 vo로 set함
				vo.setDepartureCity(session.getDepartureCity());
				vo.setArrivalCity(session.getArrivalCity());
				vo.setSeatType(session.getSeatType());
				vo.setDepartureDate(session.getDepartureDate());
			}

		}
		
		try {
			model.addAttribute("flights", flightService.searchSchedules(vo));	// 항공편 리스트
			model.addAttribute("distinctAir", flightService.distinctAir(vo));	// 항공사 선택 리스트
			model.addAttribute("distinctTime", flightService.distinctTime(vo));	// 출발시간 선택 리스트
			// 이전 페이지의 요청값을 가지고 옴
			model.addAttribute("airline", vo.getAirline());
			model.addAttribute("time", vo.getDepartureTime());
			model.addAttribute("info", vo);
			return "flight/airSchedules";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/airReserve";
		}
	}
	
	
	@GetMapping(value= {"selectReserve", "checkReserve"})
	public String selectReserve(FlightVO vo, Model model,
			@RequestParam(value="cseq", required=false) Integer cseq) {
		FlightVO flight = null;
		if(cseq!=null) {
			flight = flightService.checkReserve(cseq);
		}else {
			flight = flightService.getFlight(vo);
		}
		model.addAttribute("flight", flight);
		return "flight/reserve";
	}
	
	@GetMapping(value="reserve")
	public String reserve(FlightVO vo, Model model,@SessionAttribute(value="loginMember", required=false) MemberVO member) {
			// 예약자 정보와 예약 항공편 저장
		FlightVO reserve = flightService.getFlight(vo);
		reserve.setFlightReserveName(vo.getFlightReserveName());
		reserve.setReserveBirth(vo.getReserveBirth());
		reserve.setPassport(vo.getPassport());
		reserve.setFlightComment(vo.getFlightComment());
		reserve.setPhone(vo.getPhone());
		reserve.setLname_en(vo.getLname_en());
		reserve.setFname_en(vo.getFname_en());
		reserve.setPassenger(vo.getPassenger());
		reserve.setPassengerBirth(vo.getPassengerBirth());
		reserve.setGender(vo.getGender());
		if(member!=null) {	// 회원, 비회원 구별// 예약 등록 및 자리 업데이트
			reserve.setId(member.getId());
			flightService.insertReserveFlight(reserve);
		} else {
			flightService.insertReserveFlightGuest(reserve);
		}
		flightService.updateReserveSeatY(reserve.getSeatNum());
		return "redirect:/mypage";
	}
	
	@GetMapping(value="deleteReserve")
	public String deleteReserve(@RequestParam(value="cseq") List<Integer> cseq) {
		for(Integer code: cseq) {
			flightService.updateReserveSeatN(code);
			flightService.deleteReserve(code);
		}
		return "redirect:/mypage";
	}
	
	@GetMapping(value="updateReserve")
	public String updateReserve(FlightVO vo) {
		flightService.updateReserve(vo);
		return "redirect:/mypage";
	}

}
