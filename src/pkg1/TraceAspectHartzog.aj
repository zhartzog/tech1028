package pkg1;
import java.lang.reflect.Field;

public aspect TraceAspectHartzog {
	pointcut methodToTrace(): execution(String getName());
	
	before(): methodToTrace() {
		System.out.println("\t[BGN]" + thisJoinPointStaticPart.getSignature() + //
		", loc:" + thisJoinPointStaticPart.getSourceLocation().getLine());
	}
	
	after(): methodToTrace() {
		System.out.println("\t[END]" + thisJoinPointStaticPart.getSourceLocation().getFileName());
	}
}
