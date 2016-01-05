package br.com.ohexpress.util;

import java.io.File;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.PutObjectRequest;

public class AWSUtil {

  
 public String s3Upload(String s3bucketName, String pasta , MultipartFile fileupload) throws IllegalStateException, IOException, NoSuchAlgorithmException
 {
	
	 	
	 String chave = fileupload.getOriginalFilename()+System.currentTimeMillis();	
	  MessageDigest md = MessageDigest.getInstance("MD5");  
	  BigInteger hash = new BigInteger(1, md.digest(chave.getBytes()));  
	  String imageKey = pasta+"/"+hash.toString(16); 
	 
  //String imageKey = pasta+"/001TEST2";
  
  File file = new File( fileupload.getOriginalFilename());
  fileupload.transferTo(file);
  
 
  
  AmazonS3 s3client = new AmazonS3Client(new BasicAWSCredentials("AKIAIPE62OAH62VBO7CQ", "I2a9QMDEUytLFFDVjwj/rl8tzp2f25m+PtZg6E8c"));
  try 
  {
            System.out.println("Uploading a new object to S3 from a file\n");
           
            
            s3client.putObject(new PutObjectRequest(
                               s3bucketName, imageKey, file).withCannedAcl(CannedAccessControlList.PublicRead));
            

         } catch (AmazonServiceException ase) {
            System.out.println("Caught an AmazonServiceException, which " +
              "means your request made it " +
                    "to Amazon S3, but was rejected with an error response" +
                    " for some reason.");
            System.out.println("Error Message:    " + ase.getMessage());
            System.out.println("HTTP Status Code: " + ase.getStatusCode());
            System.out.println("AWS Error Code:   " + ase.getErrorCode());
            System.out.println("Error Type:       " + ase.getErrorType());
            System.out.println("Request ID:       " + ase.getRequestId());
        } catch (AmazonClientException ace) {
            System.out.println("Caught an AmazonClientException, which " +
              "means the client encountered " +
                    "an internal error while trying to " +
                    "communicate with S3, " +
                    "such as not being able to access the network.");
            System.out.println("Error Message: " + ace.getMessage());
        }
  
  return "https://s3-sa-east-1.amazonaws.com/" + s3bucketName + "/" + imageKey;
 }

}
