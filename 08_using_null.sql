-- 1. List the teachers who have NULL for their department.
SELECT name
FROM teacher
WHERE dept IS NULL

-- 2. Note the INNER JOIN misses the teacher with no department and the
-- department with no teacher.
SELECT teacher.name, dept.name
FROM teacher
INNER JOIN dept
ON (teacher.dept = dept.id)

-- 3. Use a different JOIN so that all teachers are listed.
SELECT teacher.name, dept.name
FROM teacher
LEFT JOIN dept
ON (teacher.dept = dept.id)

-- 4. Use a different JOIN so that all departments are listed.
SELECT teacher.name, dept.name
FROM teacher
RIGHT JOIN dept
ON (teacher.dept = dept.id)

-- 5. Show teacher name and mobile number or '07986 444 2266'
SELECT name, COALESCE(mobile, '07986 444 2266') mobile
FROM teacher

-- 6. Use the COALESCE function and a LEFT JOIN to print the name and
-- department name. Use the string 'None' where there is no department.
SELECT teacher.name, COALESCE(dept.name, 'None')
FROM teacher
LEFT JOIN dept
ON teacher.dept = dept.id

-- 7. Use COUNT to show the number of teachers and the number of mobile phones.
SELECT COUNT(teacher.id) num_teachers,
  COUNT(mobile) num_mobiles
FROM teacher

-- 8. Use COUNT and GROUP BY dept.name to show each department and the number of
-- staff. Use a RIGHT JOIN to ensure that the Engineering department is listed.
SELECT dept.name, COUNT(teacher.id) num_teachers
FROM teacher
RIGHT JOIN dept
ON teacher.dept = dept.id
GROUP BY dept.name

-- 9. Use CASE to show the name of each teacher followed by 'Sci' if the teacher
-- is in dept 1 or 2 and 'Art' otherwise.
SELECT teacher.name,
  CASE WHEN dept IS NULL THEN 'Art' ELSE 'Sci' END AS dept_type
FROM teacher

-- 10. Use CASE to show the name of each teacher followed by 'Sci' if the
-- teacher is in dept 1 or 2 show 'Art' if the dept is 3 and 'None' otherwise.
SELECT teacher.name,
  CASE
    WHEN dept IS NULL THEN 'None'
    WHEN dept = 3 THEN 'Sci'
    ELSE 'Sci'
  END AS dept_type
FROM teacher


import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.io.FileInputStream;
public class TestProdConsumer
{
    public static void main(String[] args)
                        throws InterruptedException
    {
    	
    	while(true)
    	{
    		File f=new File("MyFile.txt");
    		ArrayList<Integer> al=new ArrayList<>();
    		if(f.exists())
    		{
    			System.out.println("File exists :");
 
    		} 
    		else
    		{
    			try(DataOutputStream dos=new DataOutputStream(new FileOutputStream(f));)
    			{
	                dos.write(1);
	                dos.write(2);
	                dos.write(3);
	                dos.write(4);
	                dos.write(5);
	                dos.write(6);
    			} 
    			catch (FileNotFoundException e) 
    			{
	                e.printStackTrace();
    			}
    			catch (IOException e1) 
    			{
    				e1.printStackTrace();
    			}

    		}
    		if(false)
    			break;
    		
    		
    		
    	}//end of while

    	
    }
    
}
/*
    	Storage s=new Storage();
		Consumer c=new Consumer(s);
		Producer p=new Producer(s);
		ArrayList<Integer> al = new ArrayList<>();
        int capacity = 3;
		p.start();
		c.start();
		Thread t1 = new Thread(new Runnable()
        {
            @Override
            public void run()
            {
                try
                {
                    pc.produce();
                }
                catch(InterruptedException e)
                {
                    e.printStackTrace();
                }
            }
        });
 
        // Create consumer thread
        Thread t2 = new Thread(new Runnable()
        {
            @Override
            public void run()
            {
                try
                {
                    pc.consume();
                }
                catch(InterruptedException e)
                {
                    e.printStackTrace();
                }
            }
        });
 
        // Start both threads
        t1.start();
        t2.start();
 
        // t1 finishes before t2
        t1.join();
        t2.join();
    }
 


/*
public class TestProdConsumer {
	public static void main(String[] args){
		try {
			p.join();
			c.join();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("End Of Main");
		
		
		
	}

}
*/



http://www.geeksforgeeks.org/producer-consumer-solution-using-threads-java/
