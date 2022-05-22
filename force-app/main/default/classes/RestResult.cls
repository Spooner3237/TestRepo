public class RestResult {
	public Integer userId;
	public Integer id;
	public String title;
	public String body;

	
	public static RestResult parse(String json) {
		return (RestResult) System.JSON.deserialize(json, RestResult.class);
	}
}