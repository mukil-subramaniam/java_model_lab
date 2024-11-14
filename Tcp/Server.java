import java.io.DataOutputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

public class Server {
public static void main(String[] args)  throws IOException{
    ServerSocket serverSocket=new ServerSocket(1000);
    Socket socket= serverSocket.accept();
    DataOutputStream dataOutputStream= new DataOutputStream(socket.getOutputStream());
    dataOutputStream.writeUTF("Hii");
    dataOutputStream.close();
}
   
}