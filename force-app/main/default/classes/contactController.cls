public with sharing class contactController {
    public static list <contact> contactDetails()
     {
        list <contact> conList=[SELECT id,FirstName,LastName,Title,Phone,Email,PhotoUrl
                                FROM contact
                                 WHERE PhotoUrl!= NULL
                                WITH USER_MODE
                                LIMIT 10];

                        return conList;

    }
}