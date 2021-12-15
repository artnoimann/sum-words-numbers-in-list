void main() {
/*Вам дана строка «abc» и предполагая, что каждая буква в строке имеет значение, 
 равное ее позиции в алфавите, то наша строка будет иметь значение 1 + 2 + 3 = 6. 
Это означает, что: a = 1, b = 2, c = 3 .... z = 26.
Вам будет предоставлен список строк, и ваша задача будет вернуть значения строк,
умноженные на позицию этой строки в списке. Позиция начинается с 1.
Например: wordValue ["abc", "abc abc"] должно вернуть [6, 24] или [6 * 1, 12 * 2]. 
Обратите внимание, что пробелы игнорируются. «abc» имеет значение 6, 
а «abc abc» - значение 12. Теперь значение в позиции 1 умножается на 1, 
а значение в позиции 2 умножается на 2. Ввод будет содержать только строчные буквы 
и пробелы.
Входные данные:
Дан список строк - ["dart", "abc", "good luck"]
Выходные данные:
Вы должны получить список со значениями – [43, 12, 264]
*/
  
  
  List<String> myarray =  ["dart", "abc", "good luck"];
  alphabetArray(myarray);
  
}

  
  alphabetArray(List arraywithstrings){
    //массив букв англ алфавита нижнего регистра
    List alphabetArray = "abcdefghijklmnopqrstuvwxyz".split("");
    //пустой массив для наполнения сумм порядковых номеров букв из слов
    List<int> calculationsWithStrings = [];

    int y;
    int i;
    int cntposfor = 1;
    
    //тут крутим массив arraywithstrings
    for(y=0;y<arraywithstrings.length;y++){
      List tempArray = arraywithstrings[y].replaceAll(' ', '').split("");//временный массив для букв слов массива
      
      //храним временную переменную для суммы чисел каждого из элементов массива arraywithstrings
      int x = 0;
      //тут крутим буквы алфавита в 
      for(i=0;i<tempArray.length;i++){
         if(alphabetArray.indexOf(tempArray[i])>=0){
          //print(alphabetArray.indexOf(tempArray[i])); 
          x = (x + alphabetArray.indexOf(tempArray[i])+1); 
         }
      }
      
      //добавляем вычисления сумм чисел порядковых номеров букв из которых состоят слова в массиве arraywithstrings
      calculationsWithStrings.add(x*cntposfor);
      
      //каждый раз обходя первый массив со словами мы увеличиваем множитель
      cntposfor++;
    }
    
    print(calculationsWithStrings);
  }
