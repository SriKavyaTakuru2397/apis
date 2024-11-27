public class RestApiCl {
    public static HttpResponse Putmethod() {
        HTTP http=new HTTP();
        HttpRequest req=new HttpRequest();
        req.setMethod('PUT');
        req.setEndpoint('https://reqres.in/api/users/2');
        req.setHeader('Content-Type','application/json');
        req.setBody('{"name": "Testing", "job": "Software"}');
        HttpResponse resp=http.send(req);
        if(resp.getStatusCode()==200){
            Map<String,Object> results=(Map<String,Object>) JSON.deserializeUntyped(resp.getBody());
            System.debug(results);
            System.debug(results.values());
        }
        return resp;
 }
 public static HttpResponse Patchmethod(){
    Http http=new Http();
    HttpRequest req=new HttpRequest();
    req.setEndpoint('https://reqres.in/api/users/2');
    req.setMethod('PATCH');
    req.setHeader('Content-Type','application/json');
    req.setBody('{"name": "Tested", "job": "Software"}');
    HttpResponse resp=http.send(req);
    if(resp.getStatusCode()==200){
        Map<String,Object> results=(Map<String,Object>) JSON.deserializeUntyped(resp.getBody());
        System.debug(results);
        System.debug(results.values());
    
    }
    return resp;
 }
 public static HttpResponse Deletemethod(){
    Http http=new Http();
    HttpRequest req=new HttpRequest();
    req.setEndpoint('https://reqres.in/api/users/2');
    req.setMethod('DELETE');
    HttpResponse resp=http.send(req);
   
     System.debug(resp.getStatusCode());
     return resp;
 }
}
