global class GoogleAppsRegistrationHandler implements Auth.RegistrationHandler{ 

	global User createUser(Id portalId, Auth.UserData data){

	  // If the email scope has been set we will receive the users email address		
	  String email = data.email;
	  if (email == null) return null;

	  // Make sure the email matches our domain
	  // TODO: Uncomment and update as necessary
	  // if (!email.contains('@yourdomain.com')) return null;


	  // Attempt to find a user with the same email address
	  User u;
	  try {
	       u = [Select Id, FirstName, LastName, Email, Username from User Where Username = :email];
	     } catch (Exception e){
	       return null;
	     }
	     return u;

	}

	global void updateUser(Id userId, Id portalId, Auth.UserData data){
	    // DO Nothing in the update Scenario
	}

}

