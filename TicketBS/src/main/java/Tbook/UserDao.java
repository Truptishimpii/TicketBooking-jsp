package Tbook;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class UserDao {
	public static Connection getConnection(){
		 Connection con=null;
		 try{
		  Class.forName("com.mysql.jdbc.Driver");
		  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ticket","root","root");
		 }catch(Exception e){System.out.println(e);}
		 return con;
		}
	public static int save(User u){
		 int status=0;
		 try{
		  Connection con=getConnection();
		  PreparedStatement ps=con.prepareStatement("insert into bookingsys(username,destination,date,quantity,gender) values(?,?,?,?,?)");
		  ps.setString(1,u.getUsername());
		  ps.setString(2,u.getDestination());
		  ps.setString(3,u.getDate());
		  ps.setString(4,u.getQuantity());
		  ps.setString(5,u.getGender());
		  status=ps.executeUpdate();
		 }catch(Exception e){System.out.println(e);}
		 return status;
		}
	public static int update(User u){
		 int status=0;
		 try{
		  Connection con=getConnection();
		  PreparedStatement ps=con.prepareStatement("update bookingsys set username=?,destination=?,date=?,quantity=?,gender=? where id=?");
		  ps.setString(1,u.getUsername());
		  ps.setString(2,u.getDestination());
		  ps.setString(3,u.getDate());
		  ps.setString(4,u.getQuantity());
		  ps.setString(5,u.getGender());
		  ps.setInt(6,u.getId());
		  status=ps.executeUpdate();
		 }catch(Exception e){System.out.println(e);}
		 return status;
		}
	public static int delete(User u){
		 int status=0;
		 try{
		  Connection con=getConnection();
		  PreparedStatement ps=con.prepareStatement("delete from bookingsys where id=?");
		  ps.setInt(1,u.getId());
		  status=ps.executeUpdate();
		 }catch(Exception e){System.out.println(e);}

		 return status;
		}
	public static List<User> getAllRecords(){
		 List<User> list=new ArrayList<User>();
		 
		 try{
		  Connection con=getConnection();
		  PreparedStatement ps=con.prepareStatement("select * from bookingsys");
		  ResultSet rs=ps.executeQuery();
		  while(rs.next()){
		   User u=new User();
		   u.setId(rs.getInt("id"));
		   u.setUsername(rs.getString("username"));
		   u.setDestination(rs.getString("destination"));
		   u.setDate(rs.getString("date"));
		   u.setQuantity(rs.getString("quantity"));
		   u.setGender(rs.getString("gender"));
		   list.add(u);
		  }
		 }catch(Exception e){System.out.println(e);}
		 return list;
		}
	public static User getRecordById(int id){
		 User u=null;
		 try{
		  Connection con=getConnection();
		  PreparedStatement ps=con.prepareStatement("select * from bookingsys where id=?");
		  ps.setInt(1,id);
		  ResultSet rs=ps.executeQuery();
		  while(rs.next()){
		   u=new User();
		   u.setId(rs.getInt("id"));
		   u.setUsername(rs.getString("name"));
		   u.setDestination(rs.getString("destination"));
		   u.setDate(rs.getString("date"));
		   u.setQuantity(rs.getString("quantity"));
		   u.setGender(rs.getString("gender"));
		  }
		 }catch(Exception e){System.out.println(e);}
		 return u;
		}
	

}
