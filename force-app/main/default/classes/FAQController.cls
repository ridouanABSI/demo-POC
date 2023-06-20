public without sharing class FAQController {
    @AuraEnabled(cacheable=true)
    public static List<FAQ_Item__mdt> getFAQItems() {
      return [SELECT Question__c, Answer__c FROM FAQ_Item__mdt ORDER BY Ranking__c];
      // comment 1
    }

    public static void feature1(){
      
    }

    public static void feature2(){
      
    }

    //fix
    public static void featureA(){
      
    }
    public static void featureB(){
      
    }

    public static void featureE(){
      
    }
    public static void featureF(){
      
    }



}