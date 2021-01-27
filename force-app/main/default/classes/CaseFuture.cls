public class CaseFuture {

 @future
    public static void changeOrigin(Set<ID> CaseUpdate)
    {
        List<Case> CasetoUpdate = [Select ID, Origin from Case where ID in :CaseUpdate];
        For (Case CS:CasetoUpdate){
                        CS.Origin = 'Phone';

        }
        Update CasetoUpdate;
       // system.debug('this is complete');
    }
        
}