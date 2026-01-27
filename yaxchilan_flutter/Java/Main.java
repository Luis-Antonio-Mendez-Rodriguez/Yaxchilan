import java.io.FileWriter;
import java.io.IOException;
import java.lang.classfile.instruction.ReturnInstruction;

public class Main {
    public static void main(String[] args) throws Exception {
    String Success = "Success";
    System.out.println("Print before creating file writer");

    try(FileWriter writer = new FileWriter("../Metadata/SongMetadata.yax")){
        writer.write("This text has been written in java");
    }
    catch(IOException e){

    }

    System.out.println("Print after creating file writer");
    System.out.println("Print after creating file writer");
    System.out.println("Print after creating file writer");
    }



    
}
