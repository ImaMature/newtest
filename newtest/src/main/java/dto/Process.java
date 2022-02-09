package dto;

public class Process {

	private int p_num;
	private String p_ready;
	private String p_print;
	private String p_coating;
	private String p_paper;
	private String p_attach;
	private String p_packaging;
	private String p_date;
	private String p_finaldate;
	
	public Process() {}

	
	public Process(int p_num, String p_ready, String p_print, String p_coating, String p_paper, String p_attach,
			String p_packaging, String p_date, String p_finaldate) {
		super();
		this.p_num = p_num;
		this.p_ready = p_ready;
		this.p_print = p_print;
		this.p_coating = p_coating;
		this.p_paper = p_paper;
		this.p_attach = p_attach;
		this.p_packaging = p_packaging;
		this.p_date = p_date;
		this.p_finaldate = p_finaldate;
	}
	
	
	
}
