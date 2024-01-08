public class TaskUtil {
    public static String getTaskPriority(String leadState) {
        if(String.isBlank(leadState) || leadState.length() > 2) {
            return null;
        }
        String taskPriority;
        if(leadState == 'CA') {
            taskPriority = 'High';
        }else {
            taskPriority = 'Normal';
        }
        return taskPriority;
    }
}

//CLASSE DE TESTE
@isTest 
private class TaskUtilTest {
    @istest static void testaPrioridadeNormal() {
        String pri = TaskUtil.getTaskPriority('NY');
        System.assertEquals('Normal', pri);
    }
    @isTest static void testaAltaPrioridade() {
        String pri = TaskUtil.getTaskPriority('CA');
        System.assertEquals('High', pri);

    }
    @isTest static void testaPrioridadeInvalida() {
        String pri = TaskUtil.getTaskPriority('Rio de Jnaeiro');
        System.assertEquals(null, pri);
    }
}