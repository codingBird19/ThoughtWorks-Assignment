package reqres_Tests;

import com.intuit.karate.junit5.Karate;

public class userRunner {
    @Karate.Test
    Karate testRun() {
        return Karate.run("user").relativeTo(getClass());
    }
}
