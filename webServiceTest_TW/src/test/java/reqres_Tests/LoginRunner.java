package reqres_Tests;

import com.intuit.karate.junit5.Karate;

class LoginRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("login").relativeTo(getClass());
    }    

}
