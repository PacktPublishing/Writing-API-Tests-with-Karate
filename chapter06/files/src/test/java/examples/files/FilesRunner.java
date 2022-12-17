package examples.files;

import com.intuit.karate.junit5.Karate;

class FilesRunner {
    
    @Karate.Test
    Karate testFiles() {
        return Karate.run("files").relativeTo(getClass());
    }    

}
