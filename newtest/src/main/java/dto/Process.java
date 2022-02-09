package dto;

public class Process {

	private int p_num;
	private String p_ready;
	private String p_print;
	private String p_coating;
	private String p_paper;
	private String p_attach;
	private String p_packaging;
	private String p_finaldate;
	private String p_finaltime;
	
	public Process() {}

	public Process(int p_num, String p_ready, String p_print, String p_coating, String p_paper, String p_attach,
			String p_packaging, String p_finaldate, String p_finaltime) {
		super();
		this.p_num = p_num;
		this.p_ready = p_ready;
		this.p_print = p_print;
		this.p_coating = p_coating;
		this.p_paper = p_paper;
		this.p_attach = p_attach;
		this.p_packaging = p_packaging;
		this.p_finaldate = p_finaldate;
		this.p_finaltime = p_finaltime;
	}

	public int getP_num() {
		return p_num;
	}

	public void setP_num(int p_num) {
		this.p_num = p_num;
	}

	public String getP_ready() {
		return p_ready;
	}

	public void setP_ready(String p_ready) {
		this.p_ready = p_ready;
	}

	public String getP_print() {
		return p_print;
	}

	public void setP_print(String p_print) {
		this.p_print = p_print;
	}

	public String getP_coating() {
		return p_coating;
	}

	public void setP_coating(String p_coating) {
		this.p_coating = p_coating;
	}

	public String getP_paper() {
		return p_paper;
	}

	public void setP_paper(String p_paper) {
		this.p_paper = p_paper;
	}

	public String getP_attach() {
		return p_attach;
	}

	public void setP_attach(String p_attach) {
		this.p_attach = p_attach;
	}

	public String getP_packaging() {
		return p_packaging;
	}

	public void setP_packaging(String p_packaging) {
		this.p_packaging = p_packaging;
	}

	public String getP_finaldate() {
		return p_finaldate;
	}

	public void setP_finaldate(String p_finaldate) {
		this.p_finaldate = p_finaldate;
	}

	public String getP_finaltime() {
		return p_finaltime;
	}

	public void setP_finaltime(String p_finaltime) {
		this.p_finaltime = p_finaltime;
	}

	
	
}
