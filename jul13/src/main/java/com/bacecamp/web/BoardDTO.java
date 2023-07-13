package com.bacecamp.web;

public class BoardDTO {
	private int  bno, blike;
	private String btitle, bcontent, bwrite, btate;
	
	public BoardDTO() {}
	
	   public BoardDTO(int bno, String btitle, String bwrite, String btate, int blike) {
		      this.bno = bno;
		      this.btitle = btitle;
		      this.bwrite = bwrite;
		      this.btate = btate;
		      this.blike = blike;
		   }
	
	
	
	
	
		public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getBlike() {
		return blike;
	}
	public void setBlike(int blike) {
		this.blike = blike;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getBwrite() {
		return bwrite;
	}
	public void setBwrite(String bwrite) {
		this.bwrite = bwrite;
	}
	public String getBtate() {
		return btate;
	}
	public void setBtate(String btate) {
		this.btate = btate;
	}
	
	
}
