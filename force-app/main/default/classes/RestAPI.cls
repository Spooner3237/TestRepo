@RestResource(UrlMapping='/RestResult')
global class RestAPI {
    @HttpGet
    global static void getAPI(){
        Http http=new Http();
        HttpRequest request=new HttpRequest();
        request.setEndpoint('https://jsonplaceholder.typicode.com/posts/1');
        request.setMethod('GET');
        HttpResponse response=http.send(request);
        if(response.getStatusCode()==200){
        RestResult rr = RestResult.parse(response.getBody());
        System.debug(rr.title);
        }
  
    } 
}