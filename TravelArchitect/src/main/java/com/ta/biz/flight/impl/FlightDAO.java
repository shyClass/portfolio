package com.ta.biz.flight.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ta.biz.flight.FlightVO;

@Repository("flightDAO")
public class FlightDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<FlightVO> image(){
		return mybatis.selectList("FlightDAO.image");
	}
	
	public List<String> distinctDepartureCities(){
		return mybatis.selectList("FlightDAO.distinctDepartureCities");
	}
	
	public List<String> distinctArrivalCities(String departureCity){
		return mybatis.selectList("FlightDAO.distinctArrivalCities", departureCity);
	}
	
	public List<String> distinctSeatTypes(){
		return mybatis.selectList("FlightDAO.distinctSeatTypes");
	}
	public List<String> possibleDate(FlightVO vo){
		return mybatis.selectList("FlightDAO.possibleDate", vo);
	}
	
	
	
	
	public List<FlightVO> searchSchedules(FlightVO vo) {
		return mybatis.selectList("FlightDAO.searchSchedules", vo);
	}
	public List<FlightVO> searchAir(FlightVO vo) {
		return mybatis.selectList("FlightDAO.searchAir", vo);
	}
	public List<FlightVO> distinctAir(FlightVO vo) {
		return mybatis.selectList("FlightDAO.distinctAir", vo);
	}
	
	public List<FlightVO> distinctTime(FlightVO vo) {
		return mybatis.selectList("FlightDAO.distinctTime", vo);
	}
	public FlightVO selectFlight(int code) {
		return mybatis.selectOne("FlightDAO.selectFlight", code);
	}
	
	public FlightVO getFlight(FlightVO vo) {
		return mybatis.selectOne("FlightDAO.getFlight", vo);
	}
	
	public List<FlightVO> getFlights(FlightVO vo) {
		return mybatis.selectList("FlightDAO.getFlights", vo);
	}
	
	public void insertReserveFlightGuest(FlightVO vo) {
		mybatis.insert("FlightDAO.insertReserveFlightGuest", vo);
	}
	public void insertReserveFlight(FlightVO vo) {
		mybatis.insert("FlightDAO.insertReserveFlight", vo);
	}
	public void updateReserveSeatY(String seatNum) {
		mybatis.update("FlightDAO.updateReserveSeatY", seatNum);
	}
	public void updateReserveSeatN(Integer code) {
		mybatis.update("FlightDAO.updateReserveSeatN", code);
	}
	public void deleteReserve(Integer cseq) {
		mybatis.delete("FlightDAO.deleteReserve", cseq);
	}
	public void updateCancelSeat(Integer cseq) {
		mybatis.update("FlightDAO.updateCancelSeat", cseq);
	}
	public FlightVO checkReserve(Integer cseq) {
		return mybatis.selectOne("FlightDAO.checkReserve", cseq);
	}
	public void updateReserve(FlightVO vo) {
		mybatis.update("FlightDAO.updateReserve", vo);
	}
	
	
	public List<FlightVO> getViewFlights() {
		return mybatis.selectList("FlightDAO.getViewFlights");
	}
	public List<FlightVO> getViewFlightsGuest() {
		return mybatis.selectList("FlightDAO.getViewFlightsGuest");
	}
	
	
	
	
	
	// admin
	public List<FlightVO> getFlightSeatListAdmin(){
		return mybatis.selectList("Admin.getFlightSeatListAdmin");
	}
	public List<FlightVO> getFlightListAdmin(){
		return mybatis.selectList("Admin.getFlightListAdmin");
	}
	public void insertSeat(FlightVO vo) {
		mybatis.insert("Admin.insertSeat",vo);
	}
	public void insertFlight(FlightVO vo) {
		mybatis.insert("Admin.insertFlight",vo);
	}
	public void deleteSeat(String seatNum) {
		mybatis.delete("Admin.deleteSeat",seatNum);
	}
	public void deleteFlight(String flight) {
		mybatis.delete("Admin.deleteFlight",flight);
	}
	public FlightVO selectSeat(String seatNum) {
		return mybatis.selectOne("Admin.selectSeat", seatNum);
	}
	public void updateSeat(FlightVO vo) {
		mybatis.update("Admin.updateSeat", vo);
	}

	public void updateFlight(FlightVO vo) {
		mybatis.update("Admin.updateFlight", vo);
	}
	public FlightVO moveUpdateFlight(String flight) {
		return mybatis.selectOne("Admin.moveUpdateFlight", flight);
	}
}

