package tests;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.Assert.*;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import org.junit.Test;

public class TestParallel {

	@Test
	public void testParallel() {
		Results results = Runner.path("src/test/java/").tags("@smoke").parallel(5);
		assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
	}
	
	 public static void generateReport(String karateOutputPath) {
	        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
	        List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
	        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
	        Configuration config = new Configuration(new File("target"), "demo");
	        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
	        reportBuilder.generateReports();
	 }
}
