package examples.headers_cookies;

import com.intuit.karate.junit5.Karate;

class HeadersCookiesRunner {
    
    @Karate.Test
    Karate testHeaders() {
        return Karate.run("headers").relativeTo(getClass());
    }    
        
    @Karate.Test
    Karate testCookies() {
        return Karate.run("cookies").relativeTo(getClass());
    }    
}
