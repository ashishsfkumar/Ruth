trigger HelloWorld on Account (before insert,after insert) {
    
    System.debug('My First Trigger Fired');
 

}