import java.io.DataInputStream;
import java.io.IOException;
import java.net.Socket;

public class Client {
    public static void main(String[] args) throws IOException{

    Socket socket=new Socket("localhost",1000);
    DataInputStream dataInputStream=new DataInputStream(socket.getInputStream());
    String msg=dataInputStream.readUTF();
    System.err.println("Server Respond: "+msg);
   
    }
   
}