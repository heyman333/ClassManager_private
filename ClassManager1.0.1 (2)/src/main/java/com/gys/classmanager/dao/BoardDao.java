package com.gys.classmanager.dao;

import java.util.ArrayList;

import com.gys.classmanager.dto.BoardDto;
import com.gys.classmanager.dto.CommentDto;

	public interface BoardDao {

		public ArrayList<BoardDto> listBoard();
		
		public ArrayList<CommentDto> listComment(int cBoardIdx);
		
		public void upHit(int bIdx);
		
		public BoardDto viewBoard(int bIdx);

		public void writeBoard(String bCategory, String bTitle, String bContent, String bWriter, int hit);

		public void deleteBoard(String idx);
		
		public BoardDto modifyViewBoard(String idx);
		
		public void modifyBoard(String bCategory, String bTitle, String bContent, String idx);

	}