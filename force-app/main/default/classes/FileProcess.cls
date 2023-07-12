public class FileProcess {
    @AuraEnabled
    public static String uploadFile(String base64, String filename) {
        system.debug('* uploadFile method started');

        String result ='';
        ContentVersion cv = createContentVersion(base64,filename);

        result ='File uploaded successfully';
        system.debug('result true : '+result);



        system.debug(' uploadFile method finished***');
        return result;
    }



    private static ContentVersion createContentVersion(String base64, String filename){

        DateTime dt = DateTime.now();
        String dtString = dt.format('MM-dd-yyyy HH:mm:ss');
        ContentVersion cv = new ContentVersion();
        cv.IsMajorVersion = false;
        cv.VersionData = EncodingUtil.base64Decode(base64);
        cv.Title = filename;
        cv.Description = 'This csv file added for DNC Scrub';
        cv.PathOnClient = filename;
        try{
            insert cv;
            return cv;
        } catch(Exception e){
            system.debug('Exception Message: ' + e.getMessage());
            return null;
        }

    }
}