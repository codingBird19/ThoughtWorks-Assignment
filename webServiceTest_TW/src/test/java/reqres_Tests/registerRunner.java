package reqres_Tests;

import com.intuit.karate.junit5.Karate;

public class registerRunner {
	
	@Karate.Test
    Karate testRegister() {
        return Karate.run("register").relativeTo(getClass());
    }


}
